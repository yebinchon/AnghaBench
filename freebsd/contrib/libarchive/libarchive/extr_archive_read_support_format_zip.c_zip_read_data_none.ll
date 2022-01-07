; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_data_none.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_read_data_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.zip = type { i64, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ZIP_LENGTH_AT_END = common dso_local global i32 0, align 4
@AUTH_CODE_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@AES_VENDOR_AE_2 = common dso_local global i64 0, align 8
@LA_USED_ZIP64 = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Overflow of 64-bit file sizes\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @zip_read_data_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_read_data_none(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.zip*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.zip*
  store %struct.zip* %26, %struct.zip** %10, align 8
  %27 = load %struct.zip*, %struct.zip** %10, align 8
  %28 = getelementptr inbounds %struct.zip, %struct.zip* %27, i32 0, i32 14
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ZIP_LENGTH_AT_END, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %299

35:                                               ; preds = %4
  store i32 24, i32* %15, align 4
  %36 = load %struct.zip*, %struct.zip** %10, align 8
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i8* @__archive_read_ahead(%struct.archive_read* %45, i32 %46, i32* %12)
  store i8* %47, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %52, i32 0, i32 0
  %54 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %55 = call i32 @archive_set_error(i32* %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %56, i32* %5, align 4
  br label %436

57:                                               ; preds = %44
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %14, align 8
  %59 = load %struct.zip*, %struct.zip** %10, align 8
  %60 = getelementptr inbounds %struct.zip, %struct.zip* %59, i32 0, i32 13
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %14, align 8
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 80
  br i1 %73, label %74, label %211

74:                                               ; preds = %68
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 75
  br i1 %79, label %80, label %211

80:                                               ; preds = %74
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %86, label %211

86:                                               ; preds = %80
  %87 = load i8*, i8** %14, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %211

92:                                               ; preds = %86
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  %95 = call i64 @archive_le32dec(i8* %94)
  %96 = load %struct.zip*, %struct.zip** %10, align 8
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %119, label %100

100:                                              ; preds = %92
  %101 = load %struct.zip*, %struct.zip** %10, align 8
  %102 = getelementptr inbounds %struct.zip, %struct.zip* %101, i32 0, i32 15
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = load %struct.zip*, %struct.zip** %10, align 8
  %107 = getelementptr inbounds %struct.zip, %struct.zip* %106, i32 0, i32 13
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %211

110:                                              ; preds = %105
  %111 = load %struct.zip*, %struct.zip** %10, align 8
  %112 = getelementptr inbounds %struct.zip, %struct.zip* %111, i32 0, i32 14
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AES_VENDOR_AE_2, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %211

119:                                              ; preds = %110, %100, %92
  %120 = load %struct.zip*, %struct.zip** %10, align 8
  %121 = getelementptr inbounds %struct.zip, %struct.zip* %120, i32 0, i32 14
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @LA_USED_ZIP64, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %168

128:                                              ; preds = %119
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  %131 = call i64 @archive_le32dec(i8* %130)
  %132 = load %struct.zip*, %struct.zip** %10, align 8
  %133 = getelementptr inbounds %struct.zip, %struct.zip* %132, i32 0, i32 14
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i64 %131, i64* %135, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 8
  %138 = call i64 @archive_le64dec(i8* %137)
  store i64 %138, i64* %16, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 16
  %141 = call i64 @archive_le64dec(i8* %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* @INT64_MAX, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %128
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* @INT64_MAX, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145, %128
  %150 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %151 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %150, i32 0, i32 0
  %152 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %153 = call i32 @archive_set_error(i32* %151, i32 %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %154, i32* %5, align 4
  br label %436

155:                                              ; preds = %145
  %156 = load i64, i64* %16, align 8
  %157 = load %struct.zip*, %struct.zip** %10, align 8
  %158 = getelementptr inbounds %struct.zip, %struct.zip* %157, i32 0, i32 14
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  store i64 %156, i64* %160, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load %struct.zip*, %struct.zip** %10, align 8
  %163 = getelementptr inbounds %struct.zip, %struct.zip* %162, i32 0, i32 14
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  store i64 %161, i64* %165, align 8
  %166 = load %struct.zip*, %struct.zip** %10, align 8
  %167 = getelementptr inbounds %struct.zip, %struct.zip* %166, i32 0, i32 1
  store i32 24, i32* %167, align 8
  br label %192

168:                                              ; preds = %119
  %169 = load i8*, i8** %14, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 4
  %171 = call i64 @archive_le32dec(i8* %170)
  %172 = load %struct.zip*, %struct.zip** %10, align 8
  %173 = getelementptr inbounds %struct.zip, %struct.zip* %172, i32 0, i32 14
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 4
  store i64 %171, i64* %175, align 8
  %176 = load i8*, i8** %14, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 8
  %178 = call i64 @archive_le32dec(i8* %177)
  %179 = load %struct.zip*, %struct.zip** %10, align 8
  %180 = getelementptr inbounds %struct.zip, %struct.zip* %179, i32 0, i32 14
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  store i64 %178, i64* %182, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 12
  %185 = call i64 @archive_le32dec(i8* %184)
  %186 = load %struct.zip*, %struct.zip** %10, align 8
  %187 = getelementptr inbounds %struct.zip, %struct.zip* %186, i32 0, i32 14
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  store i64 %185, i64* %189, align 8
  %190 = load %struct.zip*, %struct.zip** %10, align 8
  %191 = getelementptr inbounds %struct.zip, %struct.zip* %190, i32 0, i32 1
  store i32 16, i32* %191, align 8
  br label %192

192:                                              ; preds = %168, %155
  %193 = load %struct.zip*, %struct.zip** %10, align 8
  %194 = getelementptr inbounds %struct.zip, %struct.zip* %193, i32 0, i32 13
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = call i32 @check_authentication_code(%struct.archive_read* %198, i8* %199)
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @ARCHIVE_OK, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %5, align 4
  br label %436

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %192
  %208 = load %struct.zip*, %struct.zip** %10, align 8
  %209 = getelementptr inbounds %struct.zip, %struct.zip* %208, i32 0, i32 2
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %210, i32* %5, align 4
  br label %436

211:                                              ; preds = %110, %105, %86, %80, %74, %68
  %212 = load i8*, i8** %14, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %14, align 8
  br label %214

214:                                              ; preds = %291, %211
  %215 = load i8*, i8** %14, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = getelementptr inbounds i8, i8* %219, i64 -4
  %221 = icmp ult i8* %215, %220
  br i1 %221, label %222, label %292

222:                                              ; preds = %214
  %223 = load i8*, i8** %14, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 3
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 80
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i8*, i8** %14, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 3
  store i8* %230, i8** %14, align 8
  br label %291

231:                                              ; preds = %222
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 3
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 75
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load i8*, i8** %14, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  store i8* %239, i8** %14, align 8
  br label %290

240:                                              ; preds = %231
  %241 = load i8*, i8** %14, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 3
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 7
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i8*, i8** %14, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  store i8* %248, i8** %14, align 8
  br label %289

249:                                              ; preds = %240
  %250 = load i8*, i8** %14, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 3
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 8
  br i1 %254, label %255, label %285

255:                                              ; preds = %249
  %256 = load i8*, i8** %14, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 7
  br i1 %260, label %261, label %285

261:                                              ; preds = %255
  %262 = load i8*, i8** %14, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 75
  br i1 %266, label %267, label %285

267:                                              ; preds = %261
  %268 = load i8*, i8** %14, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 80
  br i1 %272, label %273, label %285

273:                                              ; preds = %267
  %274 = load %struct.zip*, %struct.zip** %10, align 8
  %275 = getelementptr inbounds %struct.zip, %struct.zip* %274, i32 0, i32 13
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %273
  %279 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %280 = load i8*, i8** %14, align 8
  %281 = sext i32 %279 to i64
  %282 = sub i64 0, %281
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  store i8* %283, i8** %14, align 8
  br label %284

284:                                              ; preds = %278, %273
  br label %292

285:                                              ; preds = %267, %261, %255, %249
  %286 = load i8*, i8** %14, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 4
  store i8* %287, i8** %14, align 8
  br label %288

288:                                              ; preds = %285
  br label %289

289:                                              ; preds = %288, %246
  br label %290

290:                                              ; preds = %289, %237
  br label %291

291:                                              ; preds = %290, %228
  br label %214

292:                                              ; preds = %284, %214
  %293 = load i8*, i8** %14, align 8
  %294 = load i8*, i8** %11, align 8
  %295 = ptrtoint i8* %293 to i64
  %296 = ptrtoint i8* %294 to i64
  %297 = sub i64 %295, %296
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %12, align 4
  br label %346

299:                                              ; preds = %4
  %300 = load %struct.zip*, %struct.zip** %10, align 8
  %301 = getelementptr inbounds %struct.zip, %struct.zip* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %299
  %305 = load %struct.zip*, %struct.zip** %10, align 8
  %306 = getelementptr inbounds %struct.zip, %struct.zip* %305, i32 0, i32 2
  store i32 1, i32* %306, align 4
  %307 = load %struct.zip*, %struct.zip** %10, align 8
  %308 = getelementptr inbounds %struct.zip, %struct.zip* %307, i32 0, i32 13
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %304
  %312 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %313 = call i32 @check_authentication_code(%struct.archive_read* %312, i8* null)
  store i32 %313, i32* %13, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i32, i32* @ARCHIVE_OK, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = load i32, i32* %13, align 4
  store i32 %318, i32* %5, align 4
  br label %436

319:                                              ; preds = %311
  br label %320

320:                                              ; preds = %319, %304
  %321 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %321, i32* %5, align 4
  br label %436

322:                                              ; preds = %299
  %323 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %324 = call i8* @__archive_read_ahead(%struct.archive_read* %323, i32 1, i32* %12)
  store i8* %324, i8** %11, align 8
  %325 = load i32, i32* %12, align 4
  %326 = icmp sle i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %329 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %328, i32 0, i32 0
  %330 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %331 = call i32 @archive_set_error(i32* %329, i32 %330, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %332 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %332, i32* %5, align 4
  br label %436

333:                                              ; preds = %322
  %334 = load i32, i32* %12, align 4
  %335 = sext i32 %334 to i64
  %336 = load %struct.zip*, %struct.zip** %10, align 8
  %337 = getelementptr inbounds %struct.zip, %struct.zip* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %335, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %333
  %341 = load %struct.zip*, %struct.zip** %10, align 8
  %342 = getelementptr inbounds %struct.zip, %struct.zip* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %12, align 4
  br label %345

345:                                              ; preds = %340, %333
  br label %346

346:                                              ; preds = %345, %292
  %347 = load %struct.zip*, %struct.zip** %10, align 8
  %348 = getelementptr inbounds %struct.zip, %struct.zip* %347, i32 0, i32 11
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %346
  %352 = load %struct.zip*, %struct.zip** %10, align 8
  %353 = getelementptr inbounds %struct.zip, %struct.zip* %352, i32 0, i32 12
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %408

356:                                              ; preds = %351, %346
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %18, align 8
  %359 = load i64, i64* %18, align 8
  %360 = load %struct.zip*, %struct.zip** %10, align 8
  %361 = getelementptr inbounds %struct.zip, %struct.zip* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = icmp ugt i64 %359, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %356
  %365 = load %struct.zip*, %struct.zip** %10, align 8
  %366 = getelementptr inbounds %struct.zip, %struct.zip* %365, i32 0, i32 4
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %18, align 8
  br label %368

368:                                              ; preds = %364, %356
  %369 = load %struct.zip*, %struct.zip** %10, align 8
  %370 = getelementptr inbounds %struct.zip, %struct.zip* %369, i32 0, i32 11
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %384

373:                                              ; preds = %368
  %374 = load %struct.zip*, %struct.zip** %10, align 8
  %375 = getelementptr inbounds %struct.zip, %struct.zip* %374, i32 0, i32 10
  %376 = load i8*, i8** %11, align 8
  %377 = bitcast i8* %376 to i32*
  %378 = load i64, i64* %18, align 8
  %379 = load %struct.zip*, %struct.zip** %10, align 8
  %380 = getelementptr inbounds %struct.zip, %struct.zip* %379, i32 0, i32 7
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* %18, align 8
  %383 = call i32 @trad_enc_decrypt_update(i32* %375, i32* %377, i64 %378, i64 %381, i64 %382)
  br label %401

384:                                              ; preds = %368
  %385 = load i64, i64* %18, align 8
  store i64 %385, i64* %19, align 8
  %386 = load %struct.zip*, %struct.zip** %10, align 8
  %387 = getelementptr inbounds %struct.zip, %struct.zip* %386, i32 0, i32 9
  %388 = load i8*, i8** %11, align 8
  %389 = bitcast i8* %388 to i32*
  %390 = load i64, i64* %18, align 8
  %391 = call i32 @archive_hmac_sha1_update(i32* %387, i32* %389, i64 %390)
  %392 = load %struct.zip*, %struct.zip** %10, align 8
  %393 = getelementptr inbounds %struct.zip, %struct.zip* %392, i32 0, i32 8
  %394 = load i8*, i8** %11, align 8
  %395 = bitcast i8* %394 to i32*
  %396 = load i64, i64* %18, align 8
  %397 = load %struct.zip*, %struct.zip** %10, align 8
  %398 = getelementptr inbounds %struct.zip, %struct.zip* %397, i32 0, i32 7
  %399 = load i64, i64* %398, align 8
  %400 = call i32 @archive_decrypto_aes_ctr_update(i32* %393, i32* %395, i64 %396, i64 %399, i64* %19)
  br label %401

401:                                              ; preds = %384, %373
  %402 = load i64, i64* %18, align 8
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %12, align 4
  %404 = load %struct.zip*, %struct.zip** %10, align 8
  %405 = getelementptr inbounds %struct.zip, %struct.zip* %404, i32 0, i32 7
  %406 = load i64, i64* %405, align 8
  %407 = inttoptr i64 %406 to i8*
  store i8* %407, i8** %11, align 8
  br label %408

408:                                              ; preds = %401, %351
  %409 = load i32, i32* %12, align 4
  %410 = sext i32 %409 to i64
  %411 = load i64*, i64** %8, align 8
  store i64 %410, i64* %411, align 8
  %412 = load i32, i32* %12, align 4
  %413 = sext i32 %412 to i64
  %414 = load %struct.zip*, %struct.zip** %10, align 8
  %415 = getelementptr inbounds %struct.zip, %struct.zip* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = sub nsw i64 %416, %413
  store i64 %417, i64* %415, align 8
  %418 = load i32, i32* %12, align 4
  %419 = load %struct.zip*, %struct.zip** %10, align 8
  %420 = getelementptr inbounds %struct.zip, %struct.zip* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 8
  %422 = add nsw i32 %421, %418
  store i32 %422, i32* %420, align 8
  %423 = load i32, i32* %12, align 4
  %424 = load %struct.zip*, %struct.zip** %10, align 8
  %425 = getelementptr inbounds %struct.zip, %struct.zip* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, %423
  store i32 %427, i32* %425, align 4
  %428 = load i32, i32* %12, align 4
  %429 = load %struct.zip*, %struct.zip** %10, align 8
  %430 = getelementptr inbounds %struct.zip, %struct.zip* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = add nsw i32 %431, %428
  store i32 %432, i32* %430, align 8
  %433 = load i8*, i8** %11, align 8
  %434 = load i8**, i8*** %7, align 8
  store i8* %433, i8** %434, align 8
  %435 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %435, i32* %5, align 4
  br label %436

436:                                              ; preds = %408, %327, %320, %317, %207, %204, %149, %51
  %437 = load i32, i32* %5, align 4
  ret i32 %437
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @archive_le32dec(i8*) #1

declare dso_local i64 @archive_le64dec(i8*) #1

declare dso_local i32 @check_authentication_code(%struct.archive_read*, i8*) #1

declare dso_local i32 @trad_enc_decrypt_update(i32*, i32*, i64, i64, i64) #1

declare dso_local i32 @archive_hmac_sha1_update(i32*, i32*, i64) #1

declare dso_local i32 @archive_decrypto_aes_ctr_update(i32*, i32*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
