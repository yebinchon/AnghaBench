; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_realstrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_realstrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@BIO_BUFFER_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64, i8*, i64*)* @efipart_realstrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efipart_realstrategy(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %31, %struct.disk_devdesc** %14, align 8
  store i64 0, i64* %19, align 8
  %32 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %33 = icmp eq %struct.disk_devdesc* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %6
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %7, align 4
  br label %409

39:                                               ; preds = %34
  %40 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %41 = bitcast %struct.disk_devdesc* %40 to %struct.devdesc*
  %42 = call %struct.TYPE_11__* @efiblk_get_pdinfo(%struct.devdesc* %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %15, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %7, align 4
  br label %409

47:                                               ; preds = %39
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %16, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %52 = icmp eq %struct.TYPE_12__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %7, align 4
  br label %409

55:                                               ; preds = %47
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = urem i64 %59, 512
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %55
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %7, align 4
  br label %409

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %65, 512
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %68 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %69 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DEVT_DISK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %64
  %77 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %78 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %79 = call i64 @disk_ioctl(%struct.disk_devdesc* %77, i32 %78, i64* %18)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %18, align 8
  %88 = udiv i64 %87, %86
  store i64 %88, i64* %18, align 8
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %91 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %19, align 8
  br label %93

93:                                               ; preds = %89, %64
  %94 = load i64, i64* %18, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  %103 = load i64, i64* %19, align 8
  %104 = sub i64 %102, %103
  store i64 %104, i64* %18, align 8
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %106, %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = udiv i64 %108, %113
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %18, align 8
  %117 = add i64 %115, %116
  %118 = icmp ugt i64 %114, %117
  br i1 %118, label %119, label %151

119:                                              ; preds = %105
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %18, align 8
  %122 = add i64 %120, %121
  store i64 %122, i64* %27, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = udiv i64 %123, %128
  store i64 %129, i64* %28, align 8
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %28, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %119
  %134 = load i64*, i64** %13, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i64*, i64** %13, align 8
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* @EIO, align 4
  store i32 %139, i32* %7, align 4
  br label %409

140:                                              ; preds = %119
  %141 = load i64, i64* %27, align 8
  %142 = load i64, i64* %28, align 8
  %143 = sub i64 %141, %142
  store i64 %143, i64* %11, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = mul i64 %144, %149
  store i64 %150, i64* %11, align 8
  br label %151

151:                                              ; preds = %140, %105
  store i32 1, i32* %25, align 4
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = urem i64 %152, %157
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %151
  %161 = load i64, i64* %17, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = urem i64 %161, %166
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  store i32 0, i32* %25, align 4
  br label %170

170:                                              ; preds = %169, %160, %151
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* %24, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load i32, i32* %24, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %24, align 4
  br label %181

181:                                              ; preds = %178, %170
  %182 = load i32, i32* %24, align 4
  %183 = icmp ugt i32 %182, 1
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i8*, i8** %12, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = load i8*, i8** %12, align 8
  %188 = ptrtoint i8* %187 to i64
  %189 = load i32, i32* %24, align 4
  %190 = call i64 @roundup2(i64 %188, i32 %189)
  %191 = icmp ne i64 %186, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 1, i32* %25, align 4
  br label %193

193:                                              ; preds = %192, %184, %181
  %194 = load i32, i32* %25, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %193
  %197 = load i64, i64* @BIO_BUFFER_SIZE, align 8
  store i64 %197, i64* %23, align 8
  br label %198

198:                                              ; preds = %209, %196
  %199 = load i64, i64* %23, align 8
  %200 = icmp ugt i64 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %198
  %202 = load i32, i32* %24, align 4
  %203 = load i64, i64* %23, align 8
  %204 = call i8* @memalign(i32 %202, i64 %203)
  store i8* %204, i8** %20, align 8
  %205 = load i8*, i8** %20, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %217

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %23, align 8
  %216 = sub i64 %215, %214
  store i64 %216, i64* %23, align 8
  br label %198

217:                                              ; preds = %207, %198
  br label %221

218:                                              ; preds = %193
  %219 = load i8*, i8** %12, align 8
  store i8* %219, i8** %20, align 8
  %220 = load i64, i64* %11, align 8
  store i64 %220, i64* %23, align 8
  br label %221

221:                                              ; preds = %218, %217
  %222 = load i8*, i8** %20, align 8
  %223 = icmp eq i8* %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32, i32* @ENOMEM, align 4
  store i32 %225, i32* %7, align 4
  br label %409

226:                                              ; preds = %221
  %227 = load i64*, i64** %13, align 8
  %228 = icmp ne i64* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, i64* %11, align 8
  %231 = load i64*, i64** %13, align 8
  store i64 %230, i64* %231, align 8
  br label %232

232:                                              ; preds = %229, %226
  store i32 0, i32* %26, align 4
  %233 = load i64, i64* %17, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = udiv i64 %233, %238
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %10, align 4
  %241 = load i64, i64* %17, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = urem i64 %241, %246
  store i64 %247, i64* %21, align 8
  br label %248

248:                                              ; preds = %380, %232
  %249 = load i64, i64* %11, align 8
  %250 = icmp ugt i64 %249, 0
  br i1 %250, label %251, label %392

251:                                              ; preds = %248
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %23, align 8
  %254 = call i64 @min(i64 %252, i64 %253)
  store i64 %254, i64* %29, align 8
  %255 = load i64, i64* %29, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ult i64 %255, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  store i64 1, i64* %29, align 8
  br label %271

263:                                              ; preds = %251
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %29, align 8
  %270 = udiv i64 %269, %268
  store i64 %270, i64* %29, align 8
  br label %271

271:                                              ; preds = %263, %262
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @F_MASK, align 4
  %274 = and i32 %272, %273
  switch i32 %274, label %378 [
    i32 129, label %275
    i32 128, label %311
  ]

275:                                              ; preds = %271
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %29, align 8
  %282 = mul i64 %280, %281
  %283 = load i64, i64* %21, align 8
  %284 = sub i64 %282, %283
  store i64 %284, i64* %22, align 8
  %285 = load i64, i64* %11, align 8
  %286 = load i64, i64* %22, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %275
  %289 = load i64, i64* %11, align 8
  store i64 %289, i64* %22, align 8
  br label %290

290:                                              ; preds = %288, %275
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %10, align 4
  %294 = load i64, i64* %29, align 8
  %295 = load i8*, i8** %20, align 8
  %296 = call i32 @efipart_readwrite(%struct.TYPE_12__* %291, i32 %292, i32 %293, i64 %294, i8* %295)
  store i32 %296, i32* %26, align 4
  %297 = load i32, i32* %26, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %290
  br label %393

300:                                              ; preds = %290
  %301 = load i32, i32* %25, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = load i8*, i8** %20, align 8
  %305 = load i64, i64* %21, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8*, i8** %12, align 8
  %308 = load i64, i64* %22, align 8
  %309 = call i32 @bcopy(i8* %306, i8* %307, i64 %308)
  br label %310

310:                                              ; preds = %303, %300
  br label %380

311:                                              ; preds = %271
  store i32 0, i32* %26, align 4
  %312 = load i64, i64* %21, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %311
  store i64 1, i64* %29, align 8
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* %21, align 8
  %321 = sub i64 %319, %320
  store i64 %321, i64* %22, align 8
  %322 = load i64, i64* %22, align 8
  %323 = load i64, i64* %11, align 8
  %324 = call i64 @min(i64 %322, i64 %323)
  store i64 %324, i64* %22, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load i64, i64* %29, align 8
  %328 = load i8*, i8** %20, align 8
  %329 = call i32 @efipart_readwrite(%struct.TYPE_12__* %325, i32 129, i32 %326, i64 %327, i8* %328)
  store i32 %329, i32* %26, align 4
  br label %354

330:                                              ; preds = %311
  %331 = load i64, i64* %11, align 8
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp ult i64 %331, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %330
  store i64 1, i64* %29, align 8
  %339 = load i64, i64* %11, align 8
  store i64 %339, i64* %22, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %341 = load i32, i32* %10, align 4
  %342 = load i64, i64* %29, align 8
  %343 = load i8*, i8** %20, align 8
  %344 = call i32 @efipart_readwrite(%struct.TYPE_12__* %340, i32 129, i32 %341, i64 %342, i8* %343)
  store i32 %344, i32* %26, align 4
  br label %353

345:                                              ; preds = %330
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* %29, align 8
  %352 = mul i64 %350, %351
  store i64 %352, i64* %22, align 8
  br label %353

353:                                              ; preds = %345, %338
  br label %354

354:                                              ; preds = %353, %314
  %355 = load i32, i32* %26, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %393

358:                                              ; preds = %354
  %359 = load i32, i32* %25, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %358
  %362 = load i8*, i8** %12, align 8
  %363 = load i8*, i8** %20, align 8
  %364 = load i64, i64* %21, align 8
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  %366 = load i64, i64* %22, align 8
  %367 = call i32 @bcopy(i8* %362, i8* %365, i64 %366)
  br label %368

368:                                              ; preds = %361, %358
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %370 = load i32, i32* %10, align 4
  %371 = load i64, i64* %29, align 8
  %372 = load i8*, i8** %20, align 8
  %373 = call i32 @efipart_readwrite(%struct.TYPE_12__* %369, i32 128, i32 %370, i64 %371, i8* %372)
  store i32 %373, i32* %26, align 4
  %374 = load i32, i32* %26, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  br label %393

377:                                              ; preds = %368
  br label %380

378:                                              ; preds = %271
  %379 = load i32, i32* @EROFS, align 4
  store i32 %379, i32* %26, align 4
  br label %393

380:                                              ; preds = %377, %310
  store i64 0, i64* %21, align 8
  %381 = load i64, i64* %22, align 8
  %382 = load i8*, i8** %12, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 %381
  store i8* %383, i8** %12, align 8
  %384 = load i64, i64* %22, align 8
  %385 = load i64, i64* %11, align 8
  %386 = sub i64 %385, %384
  store i64 %386, i64* %11, align 8
  %387 = load i64, i64* %29, align 8
  %388 = load i32, i32* %10, align 4
  %389 = sext i32 %388 to i64
  %390 = add i64 %389, %387
  %391 = trunc i64 %390 to i32
  store i32 %391, i32* %10, align 4
  br label %248

392:                                              ; preds = %248
  br label %393

393:                                              ; preds = %392, %378, %376, %357, %299
  %394 = load i64*, i64** %13, align 8
  %395 = icmp ne i64* %394, null
  br i1 %395, label %396, label %401

396:                                              ; preds = %393
  %397 = load i64, i64* %11, align 8
  %398 = load i64*, i64** %13, align 8
  %399 = load i64, i64* %398, align 8
  %400 = sub i64 %399, %397
  store i64 %400, i64* %398, align 8
  br label %401

401:                                              ; preds = %396, %393
  %402 = load i32, i32* %25, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load i8*, i8** %20, align 8
  %406 = call i32 @free(i8* %405)
  br label %407

407:                                              ; preds = %404, %401
  %408 = load i32, i32* %26, align 4
  store i32 %408, i32* %7, align 4
  br label %409

409:                                              ; preds = %407, %224, %138, %62, %53, %45, %37
  %410 = load i32, i32* %7, align 4
  ret i32 %410
}

declare dso_local %struct.TYPE_11__* @efiblk_get_pdinfo(%struct.devdesc*) #1

declare dso_local i64 @disk_ioctl(%struct.disk_devdesc*, i32, i64*) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i8* @memalign(i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @efipart_readwrite(%struct.TYPE_12__*, i32, i32, i64, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
