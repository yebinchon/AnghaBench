; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_setup_decode_folder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_setup_decode_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._7z_coder = type { i32, i32, i32, i32*, i32, i32 }
%struct.archive_read = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._7z_folder = type { i32, i32, i32, i32*, i64, %struct._7z_coder*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct._7zip = type { i8**, i32, i32, i32, i32, i64, i64, i32, i64*, i64*, i32, i64, i64, i64, i64, i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"archive header\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"file content\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"The %s is encrypted, but currently not supported\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"The %s is encoded with many filters, but currently not supported\00", align 1
@setup_decode_folder.coder_copy = internal constant %struct._7z_coder { i32 0, i32 1, i32 1, i32* null, i32 0, i32 0 }, align 8
@__const.setup_decode_folder.scoder = private unnamed_addr constant [3 x %struct._7z_coder*] [%struct._7z_coder* @setup_decode_folder.coder_copy, %struct._7z_coder* @setup_decode_folder.coder_copy, %struct._7z_coder* @setup_decode_folder.coder_copy], align 16
@__const.setup_decode_folder.sunpack = private unnamed_addr constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@__const.setup_decode_folder.idx = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@_7Z_COPY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Unsupported form of BCJ2 streams\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"No memory for 7-Zip decompression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_folder*, i32)* @setup_decode_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_decode_folder(%struct.archive_read* %0, %struct._7z_folder* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct._7z_folder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca %struct._7z_coder*, align 8
  %10 = alloca %struct._7z_coder*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._7z_coder*, align 8
  %16 = alloca [3 x %struct._7z_coder*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [3 x i8*], align 16
  %20 = alloca [3 x i32], align 4
  %21 = alloca [3 x i64], align 16
  %22 = alloca [3 x i32], align 4
  %23 = alloca %struct._7z_coder*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct._7z_folder* %1, %struct._7z_folder** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct._7zip*
  store %struct._7zip* %29, %struct._7zip** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  store i8* %33, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %52, %3
  %35 = load i32, i32* %12, align 4
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct._7zip*, %struct._7zip** %8, align 8
  %39 = getelementptr inbounds %struct._7zip, %struct._7zip* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct._7zip*, %struct._7zip** %8, align 8
  %47 = getelementptr inbounds %struct._7zip, %struct._7zip* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %57 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct._7zip*, %struct._7zip** %8, align 8
  %61 = getelementptr inbounds %struct._7zip, %struct._7zip* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %63 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct._7zip*, %struct._7zip** %8, align 8
  %67 = getelementptr inbounds %struct._7zip, %struct._7zip* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %69 = call i8* @folder_uncompressed_size(%struct._7z_folder* %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct._7zip*, %struct._7zip** %8, align 8
  %72 = getelementptr inbounds %struct._7zip, %struct._7zip* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct._7zip*, %struct._7zip** %8, align 8
  %74 = getelementptr inbounds %struct._7zip, %struct._7zip* %73, i32 0, i32 11
  store i64 0, i64* %74, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %117, %55
  %76 = load i32, i32* %12, align 4
  %77 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %78 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %75
  %82 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %83 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %82, i32 0, i32 5
  %84 = load %struct._7z_coder*, %struct._7z_coder** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %84, i64 %86
  %88 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %116 [
    i32 130, label %90
    i32 129, label %90
    i32 131, label %90
    i32 128, label %113
  ]

90:                                               ; preds = %81, %81, %81
  %91 = load %struct._7zip*, %struct._7zip** %8, align 8
  %92 = getelementptr inbounds %struct._7zip, %struct._7zip* %91, i32 0, i32 4
  store i32 1, i32* %92, align 4
  %93 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %94 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %99 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @archive_entry_set_is_data_encrypted(i32 %100, i32 1)
  %102 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %103 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @archive_entry_set_is_metadata_encrypted(i32 %104, i32 1)
  br label %106

106:                                              ; preds = %97, %90
  %107 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %108 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %107, i32 0, i32 0
  %109 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %108, i32 %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %112, i32* %4, align 4
  br label %643

113:                                              ; preds = %81
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %81, %113
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %75

120:                                              ; preds = %75
  %121 = load %struct._7zip*, %struct._7zip** %8, align 8
  %122 = getelementptr inbounds %struct._7zip, %struct._7zip* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct._7zip*, %struct._7zip** %8, align 8
  %129 = getelementptr inbounds %struct._7zip, %struct._7zip* %128, i32 0, i32 4
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %132 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ugt i32 %133, 2
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %130
  %139 = load i32, i32* %14, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %148

141:                                              ; preds = %138, %135
  %142 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %143 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %142, i32 0, i32 0
  %144 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %143, i32 %144, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %145)
  %147 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %147, i32* %4, align 4
  br label %643

148:                                              ; preds = %138
  %149 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %150 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %149, i32 0, i32 5
  %151 = load %struct._7z_coder*, %struct._7z_coder** %150, align 8
  %152 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %151, i64 0
  store %struct._7z_coder* %152, %struct._7z_coder** %9, align 8
  %153 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %154 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %159 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %158, i32 0, i32 5
  %160 = load %struct._7z_coder*, %struct._7z_coder** %159, align 8
  %161 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %160, i64 1
  store %struct._7z_coder* %161, %struct._7z_coder** %10, align 8
  br label %163

162:                                              ; preds = %148
  store %struct._7z_coder* null, %struct._7z_coder** %10, align 8
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %630

166:                                              ; preds = %163
  %167 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %168 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %167, i32 0, i32 5
  %169 = load %struct._7z_coder*, %struct._7z_coder** %168, align 8
  store %struct._7z_coder* %169, %struct._7z_coder** %15, align 8
  %170 = bitcast [3 x %struct._7z_coder*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %170, i8* align 16 bitcast ([3 x %struct._7z_coder*]* @__const.setup_decode_folder.scoder to i8*), i64 24, i1 false)
  %171 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %171, i8 0, i64 24, i1 false)
  %172 = bitcast [3 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 bitcast ([3 x i32]* @__const.setup_decode_folder.sunpack to i8*), i64 12, i1 false)
  %173 = bitcast [3 x i64]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %173, i8 0, i64 24, i1 false)
  %174 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 4 bitcast ([3 x i32]* @__const.setup_decode_folder.idx to i8*), i64 12, i1 false)
  %175 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %176 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %315

179:                                              ; preds = %166
  %180 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %181 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %180, i64 3
  %182 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 128
  br i1 %184, label %185, label %315

185:                                              ; preds = %179
  %186 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %187 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 7
  br i1 %189, label %190, label %315

190:                                              ; preds = %185
  %191 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %192 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 4
  br i1 %194, label %195, label %315

195:                                              ; preds = %190
  %196 = load %struct._7zip*, %struct._7zip** %8, align 8
  %197 = getelementptr inbounds %struct._7zip, %struct._7zip* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %315

200:                                              ; preds = %195
  %201 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %202 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %201, i32 0, i32 6
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 5
  br i1 %207, label %208, label %232

208:                                              ; preds = %200
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 1, i32* %209, align 4
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 2, i32* %210, align 4
  %211 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %211, align 4
  %212 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %213 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %212, i64 1
  %214 = getelementptr inbounds [3 x %struct._7z_coder*], [3 x %struct._7z_coder*]* %16, i64 0, i64 1
  store %struct._7z_coder* %213, %struct._7z_coder** %214, align 8
  %215 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %216 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %215, i64 0
  %217 = getelementptr inbounds [3 x %struct._7z_coder*], [3 x %struct._7z_coder*]* %16, i64 0, i64 2
  store %struct._7z_coder* %216, %struct._7z_coder** %217, align 16
  %218 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %219 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 1
  store i32 %222, i32* %223, align 4
  %224 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %225 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 %228, i32* %229, align 4
  %230 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %231 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %230, i64 2
  store %struct._7z_coder* %231, %struct._7z_coder** %9, align 8
  br label %304

232:                                              ; preds = %200
  %233 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %234 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %233, i64 0
  %235 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @_7Z_COPY, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %232
  %241 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %242 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %241, i64 1
  %243 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @_7Z_COPY, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %250 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %249, i32 0, i32 5
  %251 = load %struct._7z_coder*, %struct._7z_coder** %250, align 8
  %252 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %251, i64 2
  store %struct._7z_coder* %252, %struct._7z_coder** %9, align 8
  br label %303

253:                                              ; preds = %240, %232
  %254 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %255 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %254, i64 0
  %256 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @_7Z_COPY, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %253
  %262 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %263 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %262, i64 2
  %264 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* @_7Z_COPY, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %261
  %270 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %271 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %270, i32 0, i32 5
  %272 = load %struct._7z_coder*, %struct._7z_coder** %271, align 8
  %273 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %272, i64 1
  store %struct._7z_coder* %273, %struct._7z_coder** %9, align 8
  br label %302

274:                                              ; preds = %261, %253
  %275 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %276 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %275, i64 1
  %277 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* @_7Z_COPY, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %295

282:                                              ; preds = %274
  %283 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %284 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %283, i64 2
  %285 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* @_7Z_COPY, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %282
  %291 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %292 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %291, i32 0, i32 5
  %293 = load %struct._7z_coder*, %struct._7z_coder** %292, align 8
  %294 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %293, i64 0
  store %struct._7z_coder* %294, %struct._7z_coder** %9, align 8
  br label %301

295:                                              ; preds = %282, %274
  %296 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %297 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %296, i32 0, i32 0
  %298 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %299 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %297, i32 %298, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %300 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %300, i32* %4, align 4
  br label %643

301:                                              ; preds = %290
  br label %302

302:                                              ; preds = %301, %269
  br label %303

303:                                              ; preds = %302, %248
  br label %304

304:                                              ; preds = %303, %208
  %305 = load %struct._7z_coder*, %struct._7z_coder** %15, align 8
  %306 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %305, i64 3
  store %struct._7z_coder* %306, %struct._7z_coder** %10, align 8
  %307 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %308 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = load %struct._7zip*, %struct._7zip** %8, align 8
  %314 = getelementptr inbounds %struct._7zip, %struct._7zip* %313, i32 0, i32 5
  store i64 %312, i64* %314, align 8
  br label %354

315:                                              ; preds = %195, %190, %185, %179, %166
  %316 = load %struct._7z_coder*, %struct._7z_coder** %10, align 8
  %317 = icmp ne %struct._7z_coder* %316, null
  br i1 %317, label %318, label %347

318:                                              ; preds = %315
  %319 = load %struct._7z_coder*, %struct._7z_coder** %10, align 8
  %320 = getelementptr inbounds %struct._7z_coder, %struct._7z_coder* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 128
  br i1 %322, label %323, label %347

323:                                              ; preds = %318
  %324 = load %struct._7zip*, %struct._7zip** %8, align 8
  %325 = getelementptr inbounds %struct._7zip, %struct._7zip* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %326, 4
  br i1 %327, label %328, label %347

328:                                              ; preds = %323
  %329 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %330 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 5
  br i1 %332, label %333, label %347

333:                                              ; preds = %328
  %334 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %335 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 2
  br i1 %337, label %338, label %347

338:                                              ; preds = %333
  %339 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %340 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = load %struct._7zip*, %struct._7zip** %8, align 8
  %346 = getelementptr inbounds %struct._7zip, %struct._7zip* %345, i32 0, i32 5
  store i64 %344, i64* %346, align 8
  br label %353

347:                                              ; preds = %333, %328, %323, %318, %315
  %348 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %349 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %348, i32 0, i32 0
  %350 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %351 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %349, i32 %350, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %352 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %352, i32* %4, align 4
  br label %643

353:                                              ; preds = %338
  br label %354

354:                                              ; preds = %353, %304
  %355 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %356 = call i32 @seek_pack(%struct.archive_read* %355)
  store i32 %356, i32* %13, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = load i32, i32* %13, align 4
  store i32 %359, i32* %4, align 4
  br label %643

360:                                              ; preds = %354
  %361 = load %struct._7zip*, %struct._7zip** %8, align 8
  %362 = getelementptr inbounds %struct._7zip, %struct._7zip* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = load %struct._7zip*, %struct._7zip** %8, align 8
  %366 = getelementptr inbounds %struct._7zip, %struct._7zip* %365, i32 0, i32 6
  store i64 %364, i64* %366, align 8
  %367 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %368 = call i32 @read_consume(%struct.archive_read* %367)
  store i32 0, i32* %12, align 4
  br label %369

369:                                              ; preds = %529, %360
  %370 = load i32, i32* %12, align 4
  %371 = icmp ult i32 %370, 3
  br i1 %371, label %372, label %532

372:                                              ; preds = %369
  %373 = load i32, i32* %12, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds [3 x %struct._7z_coder*], [3 x %struct._7z_coder*]* %16, i64 0, i64 %374
  %376 = load %struct._7z_coder*, %struct._7z_coder** %375, align 8
  store %struct._7z_coder* %376, %struct._7z_coder** %23, align 8
  %377 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %378 = call i32 @seek_pack(%struct.archive_read* %377)
  store i32 %378, i32* %13, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %391

380:                                              ; preds = %372
  %381 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %382 = load i8*, i8** %381, align 16
  %383 = call i32 @free(i8* %382)
  %384 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @free(i8* %385)
  %387 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %388 = load i8*, i8** %387, align 16
  %389 = call i32 @free(i8* %388)
  %390 = load i32, i32* %13, align 4
  store i32 %390, i32* %4, align 4
  br label %643

391:                                              ; preds = %372
  %392 = load i32, i32* %12, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %403

397:                                              ; preds = %391
  %398 = load %struct._7zip*, %struct._7zip** %8, align 8
  %399 = getelementptr inbounds %struct._7zip, %struct._7zip* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 8
  %401 = load %struct._7zip*, %struct._7zip** %8, align 8
  %402 = getelementptr inbounds %struct._7zip, %struct._7zip* %401, i32 0, i32 3
  store i32 %400, i32* %402, align 8
  br label %410

403:                                              ; preds = %391
  %404 = load i32, i32* %12, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load %struct._7zip*, %struct._7zip** %8, align 8
  %409 = getelementptr inbounds %struct._7zip, %struct._7zip* %408, i32 0, i32 3
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %403, %397
  %411 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %412 = load %struct._7zip*, %struct._7zip** %8, align 8
  %413 = load %struct._7z_coder*, %struct._7z_coder** %23, align 8
  %414 = call i32 @init_decompression(%struct.archive_read* %411, %struct._7zip* %412, %struct._7z_coder* %413, %struct._7z_coder* null)
  store i32 %414, i32* %13, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load i32, i32* @ARCHIVE_OK, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %429

418:                                              ; preds = %410
  %419 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %420 = load i8*, i8** %419, align 16
  %421 = call i32 @free(i8* %420)
  %422 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @free(i8* %423)
  %425 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %426 = load i8*, i8** %425, align 16
  %427 = call i32 @free(i8* %426)
  %428 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %428, i32* %4, align 4
  br label %643

429:                                              ; preds = %410
  %430 = load %struct._7zip*, %struct._7zip** %8, align 8
  %431 = getelementptr inbounds %struct._7zip, %struct._7zip* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = sext i32 %432 to i64
  %434 = call i8* @malloc(i64 %433)
  %435 = load i32, i32* %12, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %436
  store i8* %434, i8** %437, align 8
  %438 = load i32, i32* %12, align 4
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %439
  %441 = load i8*, i8** %440, align 8
  %442 = icmp eq i8* %441, null
  br i1 %442, label %443, label %458

443:                                              ; preds = %429
  %444 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %445 = load i8*, i8** %444, align 16
  %446 = call i32 @free(i8* %445)
  %447 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %448 = load i8*, i8** %447, align 8
  %449 = call i32 @free(i8* %448)
  %450 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %451 = load i8*, i8** %450, align 16
  %452 = call i32 @free(i8* %451)
  %453 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %454 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %453, i32 0, i32 0
  %455 = load i32, i32* @ENOMEM, align 4
  %456 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %454, i32 %455, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %457 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %457, i32* %4, align 4
  br label %643

458:                                              ; preds = %429
  br label %459

459:                                              ; preds = %527, %458
  %460 = load %struct._7zip*, %struct._7zip** %8, align 8
  %461 = getelementptr inbounds %struct._7zip, %struct._7zip* %460, i32 0, i32 7
  %462 = load i32, i32* %461, align 8
  %463 = icmp sgt i32 %462, 0
  br i1 %463, label %464, label %528

464:                                              ; preds = %459
  %465 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %466 = call i64 @extract_pack_stream(%struct.archive_read* %465, i32 0)
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %13, align 4
  %468 = load i32, i32* %13, align 4
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %470, label %481

470:                                              ; preds = %464
  %471 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %472 = load i8*, i8** %471, align 16
  %473 = call i32 @free(i8* %472)
  %474 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %475 = load i8*, i8** %474, align 8
  %476 = call i32 @free(i8* %475)
  %477 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %478 = load i8*, i8** %477, align 16
  %479 = call i32 @free(i8* %478)
  %480 = load i32, i32* %13, align 4
  store i32 %480, i32* %4, align 4
  br label %643

481:                                              ; preds = %464
  %482 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %483 = load %struct._7zip*, %struct._7zip** %8, align 8
  %484 = getelementptr inbounds %struct._7zip, %struct._7zip* %483, i32 0, i32 11
  %485 = load i64, i64* %484, align 8
  %486 = call i64 @get_uncompressed_data(%struct.archive_read* %482, i8** %17, i64 %485, i32 0)
  store i64 %486, i64* %18, align 8
  %487 = load i64, i64* %18, align 8
  %488 = icmp slt i64 %487, 0
  br i1 %488, label %489, label %501

489:                                              ; preds = %481
  %490 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %491 = load i8*, i8** %490, align 16
  %492 = call i32 @free(i8* %491)
  %493 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 1
  %494 = load i8*, i8** %493, align 8
  %495 = call i32 @free(i8* %494)
  %496 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 2
  %497 = load i8*, i8** %496, align 16
  %498 = call i32 @free(i8* %497)
  %499 = load i64, i64* %18, align 8
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %4, align 4
  br label %643

501:                                              ; preds = %481
  %502 = load i32, i32* %12, align 4
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %503
  %505 = load i8*, i8** %504, align 8
  %506 = load i32, i32* %12, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = getelementptr inbounds i8, i8* %505, i64 %509
  %511 = load i8*, i8** %17, align 8
  %512 = load i64, i64* %18, align 8
  %513 = call i32 @memcpy(i8* %510, i8* %511, i64 %512)
  %514 = load i64, i64* %18, align 8
  %515 = load i32, i32* %12, align 4
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = add i64 %518, %514
  store i64 %519, i64* %517, align 8
  %520 = load %struct._7zip*, %struct._7zip** %8, align 8
  %521 = getelementptr inbounds %struct._7zip, %struct._7zip* %520, i32 0, i32 6
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %501
  %525 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %526 = call i32 @read_consume(%struct.archive_read* %525)
  br label %527

527:                                              ; preds = %524, %501
  br label %459

528:                                              ; preds = %459
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %12, align 4
  %531 = add i32 %530, 1
  store i32 %531, i32* %12, align 4
  br label %369

532:                                              ; preds = %369
  store i32 0, i32* %12, align 4
  br label %533

533:                                              ; preds = %576, %532
  %534 = load i32, i32* %12, align 4
  %535 = icmp ult i32 %534, 3
  br i1 %535, label %536, label %579

536:                                              ; preds = %533
  %537 = load i32, i32* %12, align 4
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 %541
  %543 = load i8*, i8** %542, align 8
  %544 = load %struct._7zip*, %struct._7zip** %8, align 8
  %545 = getelementptr inbounds %struct._7zip, %struct._7zip* %544, i32 0, i32 0
  %546 = load i8**, i8*** %545, align 8
  %547 = load i32, i32* %12, align 4
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds i8*, i8** %546, i64 %548
  store i8* %543, i8** %549, align 8
  %550 = load i32, i32* %12, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 %554
  %556 = load i64, i64* %555, align 8
  %557 = load %struct._7zip*, %struct._7zip** %8, align 8
  %558 = getelementptr inbounds %struct._7zip, %struct._7zip* %557, i32 0, i32 8
  %559 = load i64*, i64** %558, align 8
  %560 = load i32, i32* %12, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %559, i64 %561
  store i64 %556, i64* %562, align 8
  %563 = load i32, i32* %12, align 4
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 %567
  %569 = load i64, i64* %568, align 8
  %570 = load %struct._7zip*, %struct._7zip** %8, align 8
  %571 = getelementptr inbounds %struct._7zip, %struct._7zip* %570, i32 0, i32 9
  %572 = load i64*, i64** %571, align 8
  %573 = load i32, i32* %12, align 4
  %574 = zext i32 %573 to i64
  %575 = getelementptr inbounds i64, i64* %572, i64 %574
  store i64 %569, i64* %575, align 8
  br label %576

576:                                              ; preds = %536
  %577 = load i32, i32* %12, align 4
  %578 = add i32 %577, 1
  store i32 %578, i32* %12, align 4
  br label %533

579:                                              ; preds = %533
  %580 = load %struct._7zip*, %struct._7zip** %8, align 8
  %581 = getelementptr inbounds %struct._7zip, %struct._7zip* %580, i32 0, i32 16
  %582 = load i32*, i32** %581, align 8
  %583 = icmp eq i32* %582, null
  br i1 %583, label %584, label %606

584:                                              ; preds = %579
  %585 = load %struct._7zip*, %struct._7zip** %8, align 8
  %586 = getelementptr inbounds %struct._7zip, %struct._7zip* %585, i32 0, i32 10
  store i32 32768, i32* %586, align 8
  %587 = load %struct._7zip*, %struct._7zip** %8, align 8
  %588 = getelementptr inbounds %struct._7zip, %struct._7zip* %587, i32 0, i32 10
  %589 = load i32, i32* %588, align 8
  %590 = sext i32 %589 to i64
  %591 = call i8* @malloc(i64 %590)
  %592 = bitcast i8* %591 to i32*
  %593 = load %struct._7zip*, %struct._7zip** %8, align 8
  %594 = getelementptr inbounds %struct._7zip, %struct._7zip* %593, i32 0, i32 16
  store i32* %592, i32** %594, align 8
  %595 = load %struct._7zip*, %struct._7zip** %8, align 8
  %596 = getelementptr inbounds %struct._7zip, %struct._7zip* %595, i32 0, i32 16
  %597 = load i32*, i32** %596, align 8
  %598 = icmp eq i32* %597, null
  br i1 %598, label %599, label %605

599:                                              ; preds = %584
  %600 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %601 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %600, i32 0, i32 0
  %602 = load i32, i32* @ENOMEM, align 4
  %603 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %601, i32 %602, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %604 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %604, i32* %4, align 4
  br label %643

605:                                              ; preds = %584
  br label %606

606:                                              ; preds = %605, %579
  %607 = load %struct._7zip*, %struct._7zip** %8, align 8
  %608 = getelementptr inbounds %struct._7zip, %struct._7zip* %607, i32 0, i32 15
  store i64 0, i64* %608, align 8
  %609 = load %struct._7zip*, %struct._7zip** %8, align 8
  %610 = getelementptr inbounds %struct._7zip, %struct._7zip* %609, i32 0, i32 14
  store i64 0, i64* %610, align 8
  %611 = load %struct._7zip*, %struct._7zip** %8, align 8
  %612 = getelementptr inbounds %struct._7zip, %struct._7zip* %611, i32 0, i32 13
  store i64 0, i64* %612, align 8
  %613 = load %struct._7zip*, %struct._7zip** %8, align 8
  %614 = getelementptr inbounds %struct._7zip, %struct._7zip* %613, i32 0, i32 12
  store i64 0, i64* %614, align 8
  %615 = load %struct._7zip*, %struct._7zip** %8, align 8
  %616 = getelementptr inbounds %struct._7zip, %struct._7zip* %615, i32 0, i32 1
  store i32 1, i32* %616, align 8
  %617 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %618 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %617, i32 0, i32 4
  %619 = load i64, i64* %618, align 8
  %620 = trunc i64 %619 to i32
  %621 = load %struct._7zip*, %struct._7zip** %8, align 8
  %622 = getelementptr inbounds %struct._7zip, %struct._7zip* %621, i32 0, i32 2
  store i32 %620, i32* %622, align 4
  %623 = load %struct._7z_folder*, %struct._7z_folder** %6, align 8
  %624 = call i8* @folder_uncompressed_size(%struct._7z_folder* %623)
  %625 = ptrtoint i8* %624 to i32
  %626 = load %struct._7zip*, %struct._7zip** %8, align 8
  %627 = getelementptr inbounds %struct._7zip, %struct._7zip* %626, i32 0, i32 3
  store i32 %625, i32* %627, align 8
  %628 = load %struct._7zip*, %struct._7zip** %8, align 8
  %629 = getelementptr inbounds %struct._7zip, %struct._7zip* %628, i32 0, i32 11
  store i64 0, i64* %629, align 8
  br label %630

630:                                              ; preds = %606, %163
  %631 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %632 = load %struct._7zip*, %struct._7zip** %8, align 8
  %633 = load %struct._7z_coder*, %struct._7z_coder** %9, align 8
  %634 = load %struct._7z_coder*, %struct._7z_coder** %10, align 8
  %635 = call i32 @init_decompression(%struct.archive_read* %631, %struct._7zip* %632, %struct._7z_coder* %633, %struct._7z_coder* %634)
  store i32 %635, i32* %13, align 4
  %636 = load i32, i32* %13, align 4
  %637 = load i32, i32* @ARCHIVE_OK, align 4
  %638 = icmp ne i32 %636, %637
  br i1 %638, label %639, label %641

639:                                              ; preds = %630
  %640 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %640, i32* %4, align 4
  br label %643

641:                                              ; preds = %630
  %642 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %642, i32* %4, align 4
  br label %643

643:                                              ; preds = %641, %639, %599, %489, %470, %443, %418, %380, %358, %347, %295, %141, %106
  %644 = load i32, i32* %4, align 4
  ret i32 %644
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @folder_uncompressed_size(%struct._7z_folder*) #1

declare dso_local i32 @archive_entry_set_is_data_encrypted(i32, i32) #1

declare dso_local i32 @archive_entry_set_is_metadata_encrypted(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @seek_pack(%struct.archive_read*) #1

declare dso_local i32 @read_consume(%struct.archive_read*) #1

declare dso_local i32 @init_decompression(%struct.archive_read*, %struct._7zip*, %struct._7z_coder*, %struct._7z_coder*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @extract_pack_stream(%struct.archive_read*, i32) #1

declare dso_local i64 @get_uncompressed_data(%struct.archive_read*, i8**, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
