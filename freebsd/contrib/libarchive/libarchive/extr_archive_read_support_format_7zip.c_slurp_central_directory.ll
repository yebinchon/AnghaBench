; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_slurp_central_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_slurp_central_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct._7zip = type { i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_8__, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct._7z_header_info = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@_7ZIP_SIGNATURE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Not 7-Zip archive file\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Header CRC error\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Malformed 7-Zip archive\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Truncated 7-Zip file body\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Damaged 7-Zip archive\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Couldn't allocate memory\00", align 1
@kEnd = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Unexpected Property ID = %X\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7zip*, %struct._7z_header_info*)* @slurp_central_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slurp_central_directory(%struct.archive_read* %0, %struct._7zip* %1, %struct._7z_header_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca %struct._7z_header_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct._7zip* %1, %struct._7zip** %6, align 8
  store %struct._7z_header_info* %2, %struct._7z_header_info** %7, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %16 = call i8* @__archive_read_ahead(%struct.archive_read* %15, i32 32, i64* %12)
  store i8* %16, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %19, i32* %4, align 4
  br label %320

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 77
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 90
  br i1 %31, label %36, label %32

32:                                               ; preds = %26, %20
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @memcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32, %26
  %37 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @skip_sfx(%struct.archive_read* %37, i64 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @ARCHIVE_WARN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %4, align 4
  br label %320

45:                                               ; preds = %36
  %46 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %47 = call i8* @__archive_read_ahead(%struct.archive_read* %46, i32 32, i64* %12)
  store i8* %47, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %50, i32* %4, align 4
  br label %320

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct._7zip*, %struct._7zip** %6, align 8
  %54 = getelementptr inbounds %struct._7zip, %struct._7zip* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 32
  store i64 %56, i64* %54, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** @_7ZIP_SIGNATURE, align 8
  %59 = call i64 @memcmp(i8* %57, i8* %58, i32 6)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %63 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %62, i32 0, i32 0
  %64 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %63, i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %65, i32* %4, align 4
  br label %320

66:                                               ; preds = %52
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 12
  %69 = call i64 @crc32(i32 0, i8* %68, i32 20)
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 8
  %72 = call i64 @archive_le32dec(i8* %71)
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %76 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %75, i32 0, i32 0
  %77 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %76, i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %78, i32* %4, align 4
  br label %320

79:                                               ; preds = %66
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 12
  %82 = call i64 @archive_le64dec(i8* %81)
  store i64 %82, i64* %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 20
  %85 = call i64 @archive_le64dec(i8* %84)
  store i64 %85, i64* %10, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 28
  %88 = call i64 @archive_le32dec(i8* %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %92, i32* %4, align 4
  br label %320

93:                                               ; preds = %79
  %94 = load i64, i64* %9, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %98 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %97, i32 0, i32 0
  %99 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %98, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %100, i32* %4, align 4
  br label %320

101:                                              ; preds = %93
  %102 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %103 = call i32 @__archive_read_consume(%struct.archive_read* %102, i64 32)
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @__archive_read_consume(%struct.archive_read* %111, i64 %112)
  br label %127

114:                                              ; preds = %106
  %115 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct._7zip*, %struct._7zip** %6, align 8
  %118 = getelementptr inbounds %struct._7zip, %struct._7zip* %117, i32 0, i32 13
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load i32, i32* @SEEK_SET, align 4
  %122 = call i64 @__archive_read_seek(%struct.archive_read* %115, i64 %120, i32 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %125, i32* %4, align 4
  br label %320

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %101
  %129 = load i64, i64* %9, align 8
  %130 = load %struct._7zip*, %struct._7zip** %6, align 8
  %131 = getelementptr inbounds %struct._7zip, %struct._7zip* %130, i32 0, i32 12
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load %struct._7zip*, %struct._7zip** %6, align 8
  %134 = getelementptr inbounds %struct._7zip, %struct._7zip* %133, i32 0, i32 11
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct._7zip*, %struct._7zip** %6, align 8
  %137 = getelementptr inbounds %struct._7zip, %struct._7zip* %136, i32 0, i32 9
  store i64 %135, i64* %137, align 8
  %138 = load %struct._7zip*, %struct._7zip** %6, align 8
  %139 = getelementptr inbounds %struct._7zip, %struct._7zip* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  %140 = load %struct._7zip*, %struct._7zip** %6, align 8
  %141 = getelementptr inbounds %struct._7zip, %struct._7zip* %140, i32 0, i32 1
  store i32 0, i32* %141, align 8
  %142 = load %struct._7zip*, %struct._7zip** %6, align 8
  %143 = getelementptr inbounds %struct._7zip, %struct._7zip* %142, i32 0, i32 2
  store i32 1, i32* %143, align 4
  %144 = load %struct._7zip*, %struct._7zip** %6, align 8
  %145 = getelementptr inbounds %struct._7zip, %struct._7zip* %144, i32 0, i32 10
  store i64 0, i64* %145, align 8
  store i32 1, i32* %13, align 4
  %146 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %147 = call i8* @header_bytes(%struct.archive_read* %146, i32 1)
  store i8* %147, i8** %8, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %128
  %150 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %151 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %150, i32 0, i32 0
  %152 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %153 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %151, i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %154, i32* %4, align 4
  br label %320

155:                                              ; preds = %128
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  switch i32 %159, label %297 [
    i32 129, label %160
    i32 128, label %243
  ]

160:                                              ; preds = %155
  %161 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %162 = load %struct._7zip*, %struct._7zip** %6, align 8
  %163 = getelementptr inbounds %struct._7zip, %struct._7zip* %162, i32 0, i32 8
  %164 = call i32 @decode_encoded_header_info(%struct.archive_read* %161, %struct.TYPE_8__* %163)
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %160
  %168 = load %struct._7zip*, %struct._7zip** %6, align 8
  %169 = getelementptr inbounds %struct._7zip, %struct._7zip* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %11, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %175 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %174, i32 0, i32 0
  %176 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %175, i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %177

177:                                              ; preds = %173, %167, %160
  %178 = load i32, i32* %14, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %227

180:                                              ; preds = %177
  %181 = load %struct._7zip*, %struct._7zip** %6, align 8
  %182 = getelementptr inbounds %struct._7zip, %struct._7zip* %181, i32 0, i32 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %180
  %191 = load %struct._7zip*, %struct._7zip** %6, align 8
  %192 = getelementptr inbounds %struct._7zip, %struct._7zip* %191, i32 0, i32 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %11, align 8
  br label %200

199:                                              ; preds = %180
  store i32 0, i32* %13, align 4
  br label %200

200:                                              ; preds = %199, %190
  %201 = load %struct._7zip*, %struct._7zip** %6, align 8
  %202 = getelementptr inbounds %struct._7zip, %struct._7zip* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %207 = call i32 @read_consume(%struct.archive_read* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %210 = load %struct._7zip*, %struct._7zip** %6, align 8
  %211 = getelementptr inbounds %struct._7zip, %struct._7zip* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = call i32 @setup_decode_folder(%struct.archive_read* %209, %struct.TYPE_7__* %214, i32 1)
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %208
  %219 = load %struct._7zip*, %struct._7zip** %6, align 8
  %220 = getelementptr inbounds %struct._7zip, %struct._7zip* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load %struct._7zip*, %struct._7zip** %6, align 8
  %223 = getelementptr inbounds %struct._7zip, %struct._7zip* %222, i32 0, i32 9
  store i64 %221, i64* %223, align 8
  %224 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %225 = call i32 @seek_pack(%struct.archive_read* %224)
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %218, %208
  br label %227

227:                                              ; preds = %226, %177
  %228 = load %struct._7zip*, %struct._7zip** %6, align 8
  %229 = getelementptr inbounds %struct._7zip, %struct._7zip* %228, i32 0, i32 8
  %230 = call i32 @free_StreamsInfo(%struct.TYPE_8__* %229)
  %231 = load %struct._7zip*, %struct._7zip** %6, align 8
  %232 = getelementptr inbounds %struct._7zip, %struct._7zip* %231, i32 0, i32 8
  %233 = call i32 @memset(%struct.TYPE_8__* %232, i32 0, i32 8)
  %234 = load i32, i32* %14, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %237, i32* %4, align 4
  br label %320

238:                                              ; preds = %227
  %239 = load %struct._7zip*, %struct._7zip** %6, align 8
  %240 = getelementptr inbounds %struct._7zip, %struct._7zip* %239, i32 0, i32 1
  store i32 1, i32* %240, align 8
  %241 = load %struct._7zip*, %struct._7zip** %6, align 8
  %242 = getelementptr inbounds %struct._7zip, %struct._7zip* %241, i32 0, i32 0
  store i64 0, i64* %242, align 8
  br label %243

243:                                              ; preds = %155, %238
  store i32 0, i32* @errno, align 4
  %244 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %245 = load %struct._7z_header_info*, %struct._7z_header_info** %7, align 8
  %246 = load %struct._7zip*, %struct._7zip** %6, align 8
  %247 = getelementptr inbounds %struct._7zip, %struct._7zip* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @read_Header(%struct.archive_read* %244, %struct._7z_header_info* %245, i32 %248)
  store i32 %249, i32* %14, align 4
  %250 = load i32, i32* %14, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %243
  %253 = load i32, i32* @errno, align 4
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %258 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %257, i32 0, i32 0
  %259 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %258, i32 -1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %264

260:                                              ; preds = %252
  %261 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %262 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %261, i32 0, i32 0
  %263 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %262, i32 -1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %264

264:                                              ; preds = %260, %256
  %265 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %265, i32* %4, align 4
  br label %320

266:                                              ; preds = %243
  %267 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %268 = call i8* @header_bytes(%struct.archive_read* %267, i32 1)
  store i8* %268, i8** %8, align 8
  %269 = icmp eq i8* %268, null
  br i1 %269, label %277, label %270

270:                                              ; preds = %266
  %271 = load i8*, i8** %8, align 8
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8, i8* @kEnd, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp ne i32 %273, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %270, %266
  %278 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %279 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %278, i32 0, i32 0
  %280 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %279, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %281 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %281, i32* %4, align 4
  br label %320

282:                                              ; preds = %270
  %283 = load i32, i32* %13, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = load %struct._7zip*, %struct._7zip** %6, align 8
  %287 = getelementptr inbounds %struct._7zip, %struct._7zip* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %11, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %293 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %292, i32 0, i32 0
  %294 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %293, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %295 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %295, i32* %4, align 4
  br label %320

296:                                              ; preds = %285, %282
  br label %306

297:                                              ; preds = %155
  %298 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %299 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %298, i32 0, i32 0
  %300 = load i8*, i8** %8, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 0
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %299, i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %305, i32* %4, align 4
  br label %320

306:                                              ; preds = %296
  %307 = load %struct._7zip*, %struct._7zip** %6, align 8
  %308 = getelementptr inbounds %struct._7zip, %struct._7zip* %307, i32 0, i32 7
  store i64 0, i64* %308, align 8
  %309 = load %struct._7zip*, %struct._7zip** %6, align 8
  %310 = getelementptr inbounds %struct._7zip, %struct._7zip* %309, i32 0, i32 6
  store i64 0, i64* %310, align 8
  %311 = load %struct._7zip*, %struct._7zip** %6, align 8
  %312 = getelementptr inbounds %struct._7zip, %struct._7zip* %311, i32 0, i32 5
  store i64 0, i64* %312, align 8
  %313 = load %struct._7zip*, %struct._7zip** %6, align 8
  %314 = getelementptr inbounds %struct._7zip, %struct._7zip* %313, i32 0, i32 4
  store i64 0, i64* %314, align 8
  %315 = load %struct._7zip*, %struct._7zip** %6, align 8
  %316 = getelementptr inbounds %struct._7zip, %struct._7zip* %315, i32 0, i32 3
  store i64 0, i64* %316, align 8
  %317 = load %struct._7zip*, %struct._7zip** %6, align 8
  %318 = getelementptr inbounds %struct._7zip, %struct._7zip* %317, i32 0, i32 2
  store i32 0, i32* %318, align 4
  %319 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %319, i32* %4, align 4
  br label %320

320:                                              ; preds = %306, %297, %291, %277, %264, %236, %149, %124, %96, %91, %74, %61, %49, %43, %18
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @skip_sfx(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @crc32(i32, i8*, i32) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i64 @archive_le64dec(i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i32 @decode_encoded_header_info(%struct.archive_read*, %struct.TYPE_8__*) #1

declare dso_local i32 @read_consume(%struct.archive_read*) #1

declare dso_local i32 @setup_decode_folder(%struct.archive_read*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @seek_pack(%struct.archive_read*) #1

declare dso_local i32 @free_StreamsInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @read_Header(%struct.archive_read*, %struct._7z_header_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
