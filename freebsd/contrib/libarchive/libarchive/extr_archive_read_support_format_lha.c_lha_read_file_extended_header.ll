; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_extended_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_read_file_extended_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.lha = type { i32, i8, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__, i32*, i8*, i8*, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.archive_string = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@lha_read_file_extended_header.zeros = internal constant [2 x i8] zeroinitializer, align 1
@BIRTHTIME_IS_SET = common dso_local global i32 0, align 4
@ATIME_IS_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CP%d\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@UNIX_MODE_IS_SET = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid extended LHa header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.lha*, i32*, i32, i64, i64*)* @lha_read_file_extended_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_read_file_extended_header(%struct.archive_read* %0, %struct.lha* %1, i32* %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  %9 = alloca %struct.lha*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca %struct.archive_string, align 8
  %21 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %8, align 8
  store %struct.lha* %1, %struct.lha** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %13, align 8
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %480, %6
  %26 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = call i8* @__archive_read_ahead(%struct.archive_read* %26, i64 %28, i32* null)
  store i8* %29, i8** %14, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %33 = call i32 @truncated_error(%struct.archive_read* %32)
  store i32 %33, i32* %7, align 4
  br label %490

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @archive_le16dec(i8* %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %16, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %14, align 8
  %44 = call i64 @archive_le32dec(i8* %43)
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i64, i64* %16, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, ...) @lha_crc16(i32 %53, i8* %54, i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = call i32 @__archive_read_consume(%struct.archive_read* %59, i64 %61)
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %63, i32* %7, align 4
  br label %490

64:                                               ; preds = %45
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %12, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %16, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ule i64 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %64
  br label %484

77:                                               ; preds = %71
  %78 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i8* @__archive_read_ahead(%struct.archive_read* %78, i64 %79, i32* null)
  store i8* %80, i8** %14, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %84 = call i32 @truncated_error(%struct.archive_read* %83)
  store i32 %84, i32* %7, align 4
  br label %490

85:                                               ; preds = %77
  %86 = load i64, i64* %16, align 8
  %87 = load i64*, i64** %13, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %86
  store i64 %89, i64* %87, align 8
  %90 = load i8*, i8** %14, align 8
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  store i8 %95, i8* %19, align 1
  %96 = load i64, i64* %16, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 1, %97
  %99 = sext i32 %98 to i64
  %100 = sub i64 %96, %99
  store i64 %100, i64* %17, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i8*, i8** %15, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %15, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %85
  %109 = load i8, i8* %19, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %14, align 8
  %116 = load i64, i64* %16, align 8
  %117 = call i32 (i32, ...) @lha_crc16(i32 %114, i8* %115, i64 %116)
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %112, %108, %85
  %120 = load i8, i8* %19, align 1
  %121 = zext i8 %120 to i32
  switch i32 %121, label %479 [
    i32 0, label %122
    i32 1, label %155
    i32 2, label %175
    i32 64, label %238
    i32 65, label %249
    i32 66, label %289
    i32 70, label %304
    i32 80, label %335
    i32 81, label %349
    i32 82, label %363
    i32 83, label %373
    i32 84, label %383
    i32 127, label %392
    i32 255, label %437
    i32 67, label %478
    i32 68, label %478
    i32 69, label %478
  ]

122:                                              ; preds = %119
  %123 = load i64, i64* %17, align 8
  %124 = icmp uge i64 %123, 2
  br i1 %124, label %125, label %154

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @archive_le16dec(i8* %126)
  %128 = load %struct.lha*, %struct.lha** %9, align 8
  %129 = getelementptr inbounds %struct.lha, %struct.lha* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %153

132:                                              ; preds = %125
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %14, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %17, align 8
  %138 = sub i64 %136, %137
  %139 = call i32 (i32, ...) @lha_crc16(i32 %134, i8* %135, i64 %138)
  %140 = load i32*, i32** %10, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, ...) @lha_crc16(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @lha_read_file_extended_header.zeros, i64 0, i64 0), i32 2)
  %144 = load i32*, i32** %10, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i64, i64* %17, align 8
  %150 = sub i64 %149, 2
  %151 = call i32 (i32, ...) @lha_crc16(i32 %146, i8* %148, i64 %150)
  %152 = load i32*, i32** %10, align 8
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %132, %125
  br label %154

154:                                              ; preds = %153, %122
  br label %480

155:                                              ; preds = %119
  %156 = load i64, i64* %17, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.lha*, %struct.lha** %9, align 8
  %160 = getelementptr inbounds %struct.lha, %struct.lha* %159, i32 0, i32 18
  %161 = call i32 @archive_string_empty(%struct.TYPE_3__* %160)
  br label %480

162:                                              ; preds = %155
  %163 = load i8*, i8** %15, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %484

169:                                              ; preds = %162
  %170 = load %struct.lha*, %struct.lha** %9, align 8
  %171 = getelementptr inbounds %struct.lha, %struct.lha* %170, i32 0, i32 18
  %172 = load i8*, i8** %15, align 8
  %173 = load i64, i64* %17, align 8
  %174 = call i32 @archive_strncpy(%struct.TYPE_3__* %171, i8* %172, i64 %173)
  br label %480

175:                                              ; preds = %119
  %176 = load i64, i64* %17, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i8*, i8** %15, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %178, %175
  br label %484

185:                                              ; preds = %178
  %186 = load %struct.lha*, %struct.lha** %9, align 8
  %187 = getelementptr inbounds %struct.lha, %struct.lha* %186, i32 0, i32 17
  %188 = load i8*, i8** %15, align 8
  %189 = load i64, i64* %17, align 8
  %190 = call i32 @archive_strncpy(%struct.TYPE_3__* %187, i8* %188, i64 %189)
  store i32 0, i32* %18, align 4
  br label %191

191:                                              ; preds = %218, %185
  %192 = load i32, i32* %18, align 4
  %193 = load %struct.lha*, %struct.lha** %9, align 8
  %194 = getelementptr inbounds %struct.lha, %struct.lha* %193, i32 0, i32 17
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ult i32 %192, %196
  br i1 %197, label %198, label %221

198:                                              ; preds = %191
  %199 = load %struct.lha*, %struct.lha** %9, align 8
  %200 = getelementptr inbounds %struct.lha, %struct.lha* %199, i32 0, i32 17
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp eq i32 %207, 255
  br i1 %208, label %209, label %217

209:                                              ; preds = %198
  %210 = load %struct.lha*, %struct.lha** %9, align 8
  %211 = getelementptr inbounds %struct.lha, %struct.lha* %210, i32 0, i32 17
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %18, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 47, i8* %216, align 1
  br label %217

217:                                              ; preds = %209, %198
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %18, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %18, align 4
  br label %191

221:                                              ; preds = %191
  %222 = load %struct.lha*, %struct.lha** %9, align 8
  %223 = getelementptr inbounds %struct.lha, %struct.lha* %222, i32 0, i32 17
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.lha*, %struct.lha** %9, align 8
  %227 = getelementptr inbounds %struct.lha, %struct.lha* %226, i32 0, i32 17
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sub i32 %229, 1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %225, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 47
  br i1 %235, label %236, label %237

236:                                              ; preds = %221
  br label %484

237:                                              ; preds = %221
  br label %480

238:                                              ; preds = %119
  %239 = load i64, i64* %17, align 8
  %240 = icmp eq i64 %239, 2
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load i8*, i8** %15, align 8
  %243 = call i32 @archive_le16dec(i8* %242)
  %244 = and i32 %243, 255
  %245 = trunc i32 %244 to i8
  %246 = load %struct.lha*, %struct.lha** %9, align 8
  %247 = getelementptr inbounds %struct.lha, %struct.lha* %246, i32 0, i32 1
  store i8 %245, i8* %247, align 4
  br label %248

248:                                              ; preds = %241, %238
  br label %480

249:                                              ; preds = %119
  %250 = load i64, i64* %17, align 8
  %251 = icmp eq i64 %250, 24
  br i1 %251, label %252, label %288

252:                                              ; preds = %249
  %253 = load i8*, i8** %15, align 8
  %254 = call i8* @archive_le64dec(i8* %253)
  %255 = load %struct.lha*, %struct.lha** %9, align 8
  %256 = getelementptr inbounds %struct.lha, %struct.lha* %255, i32 0, i32 16
  %257 = call i8* @lha_win_time(i8* %254, i32* %256)
  %258 = ptrtoint i8* %257 to i64
  %259 = load %struct.lha*, %struct.lha** %9, align 8
  %260 = getelementptr inbounds %struct.lha, %struct.lha* %259, i32 0, i32 2
  store i64 %258, i64* %260, align 8
  %261 = load i8*, i8** %15, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 8
  store i8* %262, i8** %15, align 8
  %263 = load i8*, i8** %15, align 8
  %264 = call i8* @archive_le64dec(i8* %263)
  %265 = load %struct.lha*, %struct.lha** %9, align 8
  %266 = getelementptr inbounds %struct.lha, %struct.lha* %265, i32 0, i32 15
  %267 = call i8* @lha_win_time(i8* %264, i32* %266)
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.lha*, %struct.lha** %9, align 8
  %270 = getelementptr inbounds %struct.lha, %struct.lha* %269, i32 0, i32 3
  store i64 %268, i64* %270, align 8
  %271 = load i8*, i8** %15, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 8
  store i8* %272, i8** %15, align 8
  %273 = load i8*, i8** %15, align 8
  %274 = call i8* @archive_le64dec(i8* %273)
  %275 = load %struct.lha*, %struct.lha** %9, align 8
  %276 = getelementptr inbounds %struct.lha, %struct.lha* %275, i32 0, i32 14
  %277 = call i8* @lha_win_time(i8* %274, i32* %276)
  %278 = ptrtoint i8* %277 to i64
  %279 = load %struct.lha*, %struct.lha** %9, align 8
  %280 = getelementptr inbounds %struct.lha, %struct.lha* %279, i32 0, i32 4
  store i64 %278, i64* %280, align 8
  %281 = load i32, i32* @BIRTHTIME_IS_SET, align 4
  %282 = load i32, i32* @ATIME_IS_SET, align 4
  %283 = or i32 %281, %282
  %284 = load %struct.lha*, %struct.lha** %9, align 8
  %285 = getelementptr inbounds %struct.lha, %struct.lha* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %283
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %252, %249
  br label %480

289:                                              ; preds = %119
  %290 = load i64, i64* %17, align 8
  %291 = icmp eq i64 %290, 16
  br i1 %291, label %292, label %303

292:                                              ; preds = %289
  %293 = load i8*, i8** %15, align 8
  %294 = call i8* @archive_le64dec(i8* %293)
  %295 = load %struct.lha*, %struct.lha** %9, align 8
  %296 = getelementptr inbounds %struct.lha, %struct.lha* %295, i32 0, i32 13
  store i8* %294, i8** %296, align 8
  %297 = load i8*, i8** %15, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 8
  store i8* %298, i8** %15, align 8
  %299 = load i8*, i8** %15, align 8
  %300 = call i8* @archive_le64dec(i8* %299)
  %301 = load %struct.lha*, %struct.lha** %9, align 8
  %302 = getelementptr inbounds %struct.lha, %struct.lha* %301, i32 0, i32 12
  store i8* %300, i8** %302, align 8
  br label %303

303:                                              ; preds = %292, %289
  br label %480

304:                                              ; preds = %119
  %305 = load i64, i64* %17, align 8
  %306 = icmp eq i64 %305, 4
  br i1 %306, label %307, label %334

307:                                              ; preds = %304
  %308 = call i32 @archive_string_init(%struct.archive_string* %20)
  %309 = load i8*, i8** %15, align 8
  %310 = call i64 @archive_le32dec(i8* %309)
  switch i64 %310, label %312 [
    i64 65001, label %311
  ]

311:                                              ; preds = %307
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %319

312:                                              ; preds = %307
  %313 = load i8*, i8** %15, align 8
  %314 = call i64 @archive_le32dec(i8* %313)
  %315 = trunc i64 %314 to i32
  %316 = call i32 @archive_string_sprintf(%struct.archive_string* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %315)
  %317 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %20, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  store i8* %318, i8** %21, align 8
  br label %319

319:                                              ; preds = %312, %311
  %320 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %321 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %320, i32 0, i32 0
  %322 = load i8*, i8** %21, align 8
  %323 = call i32* @archive_string_conversion_from_charset(i32* %321, i8* %322, i32 1)
  %324 = load %struct.lha*, %struct.lha** %9, align 8
  %325 = getelementptr inbounds %struct.lha, %struct.lha* %324, i32 0, i32 11
  store i32* %323, i32** %325, align 8
  %326 = call i32 @archive_string_free(%struct.archive_string* %20)
  %327 = load %struct.lha*, %struct.lha** %9, align 8
  %328 = getelementptr inbounds %struct.lha, %struct.lha* %327, i32 0, i32 11
  %329 = load i32*, i32** %328, align 8
  %330 = icmp eq i32* %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %319
  %332 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %332, i32* %7, align 4
  br label %490

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333, %304
  br label %480

335:                                              ; preds = %119
  %336 = load i64, i64* %17, align 8
  %337 = icmp eq i64 %336, 4
  br i1 %337, label %338, label %348

338:                                              ; preds = %335
  %339 = load i8*, i8** %15, align 8
  %340 = call i32 @archive_le16dec(i8* %339)
  %341 = load %struct.lha*, %struct.lha** %9, align 8
  %342 = getelementptr inbounds %struct.lha, %struct.lha* %341, i32 0, i32 6
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* @UNIX_MODE_IS_SET, align 4
  %344 = load %struct.lha*, %struct.lha** %9, align 8
  %345 = getelementptr inbounds %struct.lha, %struct.lha* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %338, %335
  br label %480

349:                                              ; preds = %119
  %350 = load i64, i64* %17, align 8
  %351 = icmp eq i64 %350, 8
  br i1 %351, label %352, label %362

352:                                              ; preds = %349
  %353 = load i8*, i8** %15, align 8
  %354 = call i32 @archive_le16dec(i8* %353)
  %355 = load %struct.lha*, %struct.lha** %9, align 8
  %356 = getelementptr inbounds %struct.lha, %struct.lha* %355, i32 0, i32 7
  store i32 %354, i32* %356, align 8
  %357 = load i8*, i8** %15, align 8
  %358 = getelementptr inbounds i8, i8* %357, i64 2
  %359 = call i32 @archive_le16dec(i8* %358)
  %360 = load %struct.lha*, %struct.lha** %9, align 8
  %361 = getelementptr inbounds %struct.lha, %struct.lha* %360, i32 0, i32 8
  store i32 %359, i32* %361, align 4
  br label %362

362:                                              ; preds = %352, %349
  br label %480

363:                                              ; preds = %119
  %364 = load i64, i64* %17, align 8
  %365 = icmp ugt i64 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %363
  %367 = load %struct.lha*, %struct.lha** %9, align 8
  %368 = getelementptr inbounds %struct.lha, %struct.lha* %367, i32 0, i32 10
  %369 = load i8*, i8** %15, align 8
  %370 = load i64, i64* %17, align 8
  %371 = call i32 @archive_strncpy(%struct.TYPE_3__* %368, i8* %369, i64 %370)
  br label %372

372:                                              ; preds = %366, %363
  br label %480

373:                                              ; preds = %119
  %374 = load i64, i64* %17, align 8
  %375 = icmp ugt i64 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %373
  %377 = load %struct.lha*, %struct.lha** %9, align 8
  %378 = getelementptr inbounds %struct.lha, %struct.lha* %377, i32 0, i32 9
  %379 = load i8*, i8** %15, align 8
  %380 = load i64, i64* %17, align 8
  %381 = call i32 @archive_strncpy(%struct.TYPE_3__* %378, i8* %379, i64 %380)
  br label %382

382:                                              ; preds = %376, %373
  br label %480

383:                                              ; preds = %119
  %384 = load i64, i64* %17, align 8
  %385 = icmp eq i64 %384, 4
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load i8*, i8** %15, align 8
  %388 = call i64 @archive_le32dec(i8* %387)
  %389 = load %struct.lha*, %struct.lha** %9, align 8
  %390 = getelementptr inbounds %struct.lha, %struct.lha* %389, i32 0, i32 3
  store i64 %388, i64* %390, align 8
  br label %391

391:                                              ; preds = %386, %383
  br label %480

392:                                              ; preds = %119
  %393 = load i64, i64* %17, align 8
  %394 = icmp eq i64 %393, 16
  br i1 %394, label %395, label %436

395:                                              ; preds = %392
  %396 = load i8*, i8** %15, align 8
  %397 = call i32 @archive_le16dec(i8* %396)
  %398 = and i32 %397, 255
  %399 = trunc i32 %398 to i8
  %400 = load %struct.lha*, %struct.lha** %9, align 8
  %401 = getelementptr inbounds %struct.lha, %struct.lha* %400, i32 0, i32 1
  store i8 %399, i8* %401, align 4
  %402 = load i8*, i8** %15, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 2
  %404 = call i32 @archive_le16dec(i8* %403)
  %405 = load %struct.lha*, %struct.lha** %9, align 8
  %406 = getelementptr inbounds %struct.lha, %struct.lha* %405, i32 0, i32 6
  store i32 %404, i32* %406, align 4
  %407 = load i8*, i8** %15, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 4
  %409 = call i32 @archive_le16dec(i8* %408)
  %410 = load %struct.lha*, %struct.lha** %9, align 8
  %411 = getelementptr inbounds %struct.lha, %struct.lha* %410, i32 0, i32 7
  store i32 %409, i32* %411, align 8
  %412 = load i8*, i8** %15, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 6
  %414 = call i32 @archive_le16dec(i8* %413)
  %415 = load %struct.lha*, %struct.lha** %9, align 8
  %416 = getelementptr inbounds %struct.lha, %struct.lha* %415, i32 0, i32 8
  store i32 %414, i32* %416, align 4
  %417 = load i8*, i8** %15, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 8
  %419 = call i64 @archive_le32dec(i8* %418)
  %420 = load %struct.lha*, %struct.lha** %9, align 8
  %421 = getelementptr inbounds %struct.lha, %struct.lha* %420, i32 0, i32 2
  store i64 %419, i64* %421, align 8
  %422 = load i8*, i8** %15, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 12
  %424 = call i64 @archive_le32dec(i8* %423)
  %425 = load %struct.lha*, %struct.lha** %9, align 8
  %426 = getelementptr inbounds %struct.lha, %struct.lha* %425, i32 0, i32 4
  store i64 %424, i64* %426, align 8
  %427 = load i32, i32* @UNIX_MODE_IS_SET, align 4
  %428 = load i32, i32* @BIRTHTIME_IS_SET, align 4
  %429 = or i32 %427, %428
  %430 = load i32, i32* @ATIME_IS_SET, align 4
  %431 = or i32 %429, %430
  %432 = load %struct.lha*, %struct.lha** %9, align 8
  %433 = getelementptr inbounds %struct.lha, %struct.lha* %432, i32 0, i32 5
  %434 = load i32, i32* %433, align 8
  %435 = or i32 %434, %431
  store i32 %435, i32* %433, align 8
  br label %436

436:                                              ; preds = %395, %392
  br label %480

437:                                              ; preds = %119
  %438 = load i64, i64* %17, align 8
  %439 = icmp eq i64 %438, 20
  br i1 %439, label %440, label %477

440:                                              ; preds = %437
  %441 = load i8*, i8** %15, align 8
  %442 = call i64 @archive_le32dec(i8* %441)
  %443 = trunc i64 %442 to i32
  %444 = load %struct.lha*, %struct.lha** %9, align 8
  %445 = getelementptr inbounds %struct.lha, %struct.lha* %444, i32 0, i32 6
  store i32 %443, i32* %445, align 4
  %446 = load i8*, i8** %15, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 4
  %448 = call i64 @archive_le32dec(i8* %447)
  %449 = trunc i64 %448 to i32
  %450 = load %struct.lha*, %struct.lha** %9, align 8
  %451 = getelementptr inbounds %struct.lha, %struct.lha* %450, i32 0, i32 7
  store i32 %449, i32* %451, align 8
  %452 = load i8*, i8** %15, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 8
  %454 = call i64 @archive_le32dec(i8* %453)
  %455 = trunc i64 %454 to i32
  %456 = load %struct.lha*, %struct.lha** %9, align 8
  %457 = getelementptr inbounds %struct.lha, %struct.lha* %456, i32 0, i32 8
  store i32 %455, i32* %457, align 4
  %458 = load i8*, i8** %15, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 12
  %460 = call i64 @archive_le32dec(i8* %459)
  %461 = load %struct.lha*, %struct.lha** %9, align 8
  %462 = getelementptr inbounds %struct.lha, %struct.lha* %461, i32 0, i32 2
  store i64 %460, i64* %462, align 8
  %463 = load i8*, i8** %15, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 16
  %465 = call i64 @archive_le32dec(i8* %464)
  %466 = load %struct.lha*, %struct.lha** %9, align 8
  %467 = getelementptr inbounds %struct.lha, %struct.lha* %466, i32 0, i32 4
  store i64 %465, i64* %467, align 8
  %468 = load i32, i32* @UNIX_MODE_IS_SET, align 4
  %469 = load i32, i32* @BIRTHTIME_IS_SET, align 4
  %470 = or i32 %468, %469
  %471 = load i32, i32* @ATIME_IS_SET, align 4
  %472 = or i32 %470, %471
  %473 = load %struct.lha*, %struct.lha** %9, align 8
  %474 = getelementptr inbounds %struct.lha, %struct.lha* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 8
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 8
  br label %477

477:                                              ; preds = %440, %437
  br label %480

478:                                              ; preds = %119, %119, %119
  br label %479

479:                                              ; preds = %119, %478
  br label %480

480:                                              ; preds = %479, %477, %436, %391, %382, %372, %362, %348, %334, %303, %288, %248, %237, %169, %158, %154
  %481 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %482 = load i64, i64* %16, align 8
  %483 = call i32 @__archive_read_consume(%struct.archive_read* %481, i64 %482)
  br label %25

484:                                              ; preds = %236, %184, %168, %76
  %485 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %486 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %485, i32 0, i32 0
  %487 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %488 = call i32 @archive_set_error(i32* %486, i32 %487, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %489 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %489, i32* %7, align 4
  br label %490

490:                                              ; preds = %484, %331, %82, %58, %31
  %491 = load i32, i32* %7, align 4
  ret i32 %491
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @truncated_error(%struct.archive_read*) #1

declare dso_local i32 @archive_le16dec(i8*) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i32 @lha_crc16(i32, ...) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @archive_strncpy(%struct.TYPE_3__*, i8*, i64) #1

declare dso_local i8* @lha_win_time(i8*, i32*) #1

declare dso_local i8* @archive_le64dec(i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_string_sprintf(%struct.archive_string*, i8*, i32) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
