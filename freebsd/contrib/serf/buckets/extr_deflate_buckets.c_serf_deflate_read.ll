; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_deflate_buckets.c_serf_deflate_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_deflate_buckets.c_serf_deflate_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32*, i32, %struct.TYPE_14__, i32*, i64, i32, i32* }
%struct.TYPE_14__ = type { i64, i8*, i32*, i32*, i64 }

@deflate_magic = common dso_local global i32* null, align 8
@SERF_ERROR_DECOMPRESSION_FAILED = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i8* null, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@DEFLATE_VERIFY_SIZE = common dso_local global i32* null, align 8
@APR_EGENERAL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i32*, i8**, i32**)* @serf_deflate_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serf_deflate_read(%struct.TYPE_15__* %0, i32* %1, i8** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %10, align 8
  br label %23

23:                                               ; preds = %4, %510
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %508 [
    i32 130, label %27
    i32 129, label %27
    i32 133, label %91
    i32 128, label %127
    i32 131, label %163
    i32 134, label %192
    i32 132, label %209
    i32 135, label %500
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = call i8* @serf_bucket_read(%struct.TYPE_15__* %30, i32* %33, i8** %12, i32** %13)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @SERF_BUCKET_READ_ERROR(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %5, align 8
  br label %511

40:                                               ; preds = %27
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 12
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = ptrtoint i32* %46 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = getelementptr inbounds i32, i32* %43, i64 %53
  %55 = load i8*, i8** %12, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @memcpy(i32* %54, i8* %55, i32* %56)
  %58 = load i32*, i32** %13, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = ptrtoint i32* %61 to i64
  %63 = ptrtoint i32* %58 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %60, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %40
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @APR_STATUS_IS_EAGAIN(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32**, i32*** %9, align 8
  store i32* null, i32** %80, align 8
  %81 = load i8*, i8** %11, align 8
  store i8* %81, i8** %5, align 8
  br label %511

82:                                               ; preds = %71
  br label %90

83:                                               ; preds = %40
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32**, i32*** %9, align 8
  store i32* null, i32** %87, align 8
  %88 = load i8*, i8** %11, align 8
  store i8* %88, i8** %5, align 8
  br label %511

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %82
  br label %510

91:                                               ; preds = %23
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 12
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** @deflate_magic, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 12
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** @deflate_magic, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101, %91
  %112 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %112, i8** %5, align 8
  br label %511

113:                                              ; preds = %101
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 12
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %121, i8** %5, align 8
  br label %511

122:                                              ; preds = %113
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %510

127:                                              ; preds = %23
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 12
  %130 = load i32*, i32** %129, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = call i64 @getLong(i8* %131)
  store i64 %132, i64* %15, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %139, i8** %5, align 8
  br label %511

140:                                              ; preds = %127
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 12
  %143 = load i32*, i32** %142, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = call i64 @getLong(i8* %145)
  store i64 %146, i64* %16, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %17, align 8
  %151 = load i64, i64* %17, align 8
  %152 = and i64 %151, 4294967295
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %140
  %157 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %157, i8** %5, align 8
  br label %511

158:                                              ; preds = %140
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %510

163:                                              ; preds = %23
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @inflateInit2(%struct.TYPE_14__* %165, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @Z_OK, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %174, i8** %5, align 8
  br label %511

175:                                              ; preds = %163
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 10
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  store i64 %178, i64* %181, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 9
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  store i32* %184, i32** %187, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %510

192:                                              ; preds = %23
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 8
  %195 = call i32 @inflateEnd(%struct.TYPE_14__* %194)
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = call i32 @serf_bucket_aggregate_prepend(%struct.TYPE_15__* %198, %struct.TYPE_15__* %201)
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %204, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  br label %510

209:                                              ; preds = %23
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = load i32*, i32** %7, align 8
  %214 = load i8**, i8*** %8, align 8
  %215 = load i32**, i32*** %9, align 8
  %216 = call i8* @serf_bucket_read(%struct.TYPE_15__* %212, i32* %213, i8** %214, i32** %215)
  store i8* %216, i8** %11, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @SERF_BUCKET_READ_ERROR(i8* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %209
  %221 = load i8*, i8** %11, align 8
  store i8* %221, i8** %5, align 8
  br label %511

222:                                              ; preds = %209
  %223 = load i8*, i8** %11, align 8
  %224 = call i32 @APR_STATUS_IS_EOF(i8* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %11, align 8
  %230 = load i8*, i8** %11, align 8
  %231 = call i32 @APR_STATUS_IS_EOF(i8* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i8*, i8** @APR_SUCCESS, align 8
  store i8* %234, i8** %11, align 8
  br label %235

235:                                              ; preds = %233, %226
  br label %236

236:                                              ; preds = %235, %222
  %237 = load i32**, i32*** %9, align 8
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i8*, i8** %11, align 8
  store i8* %241, i8** %5, align 8
  br label %511

242:                                              ; preds = %236
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = icmp eq i32* %246, null
  br i1 %247, label %248, label %294

248:                                              ; preds = %242
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %250, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = call i8* @serf_bucket_read(%struct.TYPE_15__* %251, i32* %254, i8** %12, i32** %13)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 @SERF_BUCKET_READ_ERROR(i8* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %248
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %5, align 8
  br label %511

267:                                              ; preds = %248
  %268 = load i32*, i32** %13, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %285, label %270

270:                                              ; preds = %267
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @APR_STATUS_IS_EAGAIN(i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %270
  %277 = load i32**, i32*** %9, align 8
  store i32* null, i32** %277, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  store i8* %280, i8** %11, align 8
  %281 = load i8*, i8** @APR_SUCCESS, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** %11, align 8
  store i8* %284, i8** %5, align 8
  br label %511

285:                                              ; preds = %270, %267
  %286 = load i8*, i8** %12, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  store i8* %286, i8** %289, align 8
  %290 = load i32*, i32** %13, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  store i32* %290, i32** %293, align 8
  br label %294

294:                                              ; preds = %285, %242
  br label %295

295:                                              ; preds = %294, %463
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 8
  %298 = load i32, i32* @Z_NO_FLUSH, align 4
  %299 = call i32 @inflate(%struct.TYPE_14__* %297, i32 %298)
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* @Z_BUF_ERROR, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %309, label %303

303:                                              ; preds = %295
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = icmp eq i32* %307, null
  br i1 %308, label %309, label %360

309:                                              ; preds = %303, %295
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 10
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 4
  store i64 %312, i64* %315, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 9
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = ptrtoint i32* %318 to i64
  %324 = ptrtoint i32* %322 to i64
  %325 = sub i64 %323, %324
  %326 = sdiv exact i64 %325, 4
  %327 = inttoptr i64 %326 to i32*
  store i32* %327, i32** %13, align 8
  %328 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 10
  %333 = load i64, i64* %332, align 8
  %334 = inttoptr i64 %333 to i32*
  %335 = load i32*, i32** %13, align 8
  %336 = call i8* @crc32(i64 %330, i32* %334, i32* %335)
  %337 = ptrtoint i8* %336 to i64
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  store i64 %337, i64* %339, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 10
  %342 = load i64, i64* %341, align 8
  %343 = inttoptr i64 %342 to i8*
  %344 = load i32*, i32** %13, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call %struct.TYPE_15__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* %343, i32* %344, i32 %347)
  store %struct.TYPE_15__* %348, %struct.TYPE_15__** %18, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 4
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %350, align 8
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %353 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_15__* %351, %struct.TYPE_15__* %352)
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 9
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %357, i32 0, i32 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 3
  store i32* %356, i32** %359, align 8
  br label %464

360:                                              ; preds = %303
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* @Z_STREAM_END, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %457

364:                                              ; preds = %360
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 9
  %367 = load i32*, i32** %366, align 8
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 3
  %371 = load i32*, i32** %370, align 8
  %372 = ptrtoint i32* %367 to i64
  %373 = ptrtoint i32* %371 to i64
  %374 = sub i64 %372, %373
  %375 = sdiv exact i64 %374, 4
  %376 = inttoptr i64 %375 to i32*
  store i32* %376, i32** %13, align 8
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 10
  %382 = load i64, i64* %381, align 8
  %383 = inttoptr i64 %382 to i32*
  %384 = load i32*, i32** %13, align 8
  %385 = call i8* @crc32(i64 %379, i32* %383, i32* %384)
  %386 = ptrtoint i8* %385 to i64
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 1
  store i64 %386, i64* %388, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 10
  %391 = load i64, i64* %390, align 8
  %392 = inttoptr i64 %391 to i8*
  %393 = load i32*, i32** %13, align 8
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = call %struct.TYPE_15__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* %392, i32* %393, i32 %396)
  store %struct.TYPE_15__* %397, %struct.TYPE_15__** %19, align 8
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 4
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %399, align 8
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %402 = call i32 @serf_bucket_aggregate_append(%struct.TYPE_15__* %400, %struct.TYPE_15__* %401)
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 9
  %405 = load i32*, i32** %404, align 8
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 8
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 3
  store i32* %405, i32** %408, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = call %struct.TYPE_15__* @serf_bucket_aggregate_create(i32 %411)
  store %struct.TYPE_15__* %412, %struct.TYPE_15__** %19, align 8
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 3
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %415, align 8
  %417 = call i32 @serf_bucket_aggregate_prepend(%struct.TYPE_15__* %413, %struct.TYPE_15__* %416)
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 3
  store %struct.TYPE_15__* %418, %struct.TYPE_15__** %420, align 8
  %421 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %421, i32 0, i32 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 1
  %424 = load i8*, i8** %423, align 8
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 2
  %428 = load i32*, i32** %427, align 8
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call %struct.TYPE_15__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* %424, i32* %428, i32 %431)
  store %struct.TYPE_15__* %432, %struct.TYPE_15__** %19, align 8
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %433, i32 0, i32 3
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %434, align 8
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %437 = call i32 @serf_bucket_aggregate_prepend(%struct.TYPE_15__* %435, %struct.TYPE_15__* %436)
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 8
  switch i32 %440, label %454 [
    i32 136, label %441
    i32 137, label %451
  ]

441:                                              ; preds = %364
  %442 = load i32*, i32** @DEFLATE_VERIFY_SIZE, align 8
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 5
  store i32* %442, i32** %444, align 8
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %445, i32 0, i32 6
  store i32* %442, i32** %446, align 8
  %447 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %448, align 8
  br label %456

451:                                              ; preds = %364
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 0
  store i32 134, i32* %453, align 8
  br label %456

454:                                              ; preds = %364
  %455 = load i8*, i8** @APR_EGENERAL, align 8
  store i8* %455, i8** %5, align 8
  br label %511

456:                                              ; preds = %451, %441
  br label %464

457:                                              ; preds = %360
  %458 = load i32, i32* %14, align 4
  %459 = load i32, i32* @Z_OK, align 4
  %460 = icmp ne i32 %458, %459
  br i1 %460, label %461, label %463

461:                                              ; preds = %457
  %462 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %462, i8** %5, align 8
  br label %511

463:                                              ; preds = %457
  br label %295

464:                                              ; preds = %456, %309
  %465 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %465, i32 0, i32 4
  %467 = load %struct.TYPE_15__*, %struct.TYPE_15__** %466, align 8
  %468 = load i32*, i32** %7, align 8
  %469 = load i8**, i8*** %8, align 8
  %470 = load i32**, i32*** %9, align 8
  %471 = call i8* @serf_bucket_read(%struct.TYPE_15__* %467, i32* %468, i8** %469, i32** %470)
  store i8* %471, i8** %11, align 8
  %472 = load i8*, i8** %11, align 8
  %473 = call i32 @APR_STATUS_IS_EOF(i8* %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %498

475:                                              ; preds = %464
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 2
  %478 = load i8*, i8** %477, align 8
  store i8* %478, i8** %11, align 8
  %479 = load i32, i32* %14, align 4
  %480 = load i32, i32* @Z_STREAM_END, align 4
  %481 = icmp ne i32 %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %475
  %483 = load i8*, i8** @APR_SUCCESS, align 8
  store i8* %483, i8** %5, align 8
  br label %511

484:                                              ; preds = %475
  %485 = load i8*, i8** %11, align 8
  %486 = call i32 @APR_STATUS_IS_EOF(i8* %485)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %497

488:                                              ; preds = %484
  %489 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %490 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = icmp ne i32 %491, 132
  br i1 %492, label %493, label %495

493:                                              ; preds = %488
  %494 = load i8*, i8** @APR_SUCCESS, align 8
  store i8* %494, i8** %5, align 8
  br label %511

495:                                              ; preds = %488
  %496 = load i8*, i8** @SERF_ERROR_DECOMPRESSION_FAILED, align 8
  store i8* %496, i8** %5, align 8
  br label %511

497:                                              ; preds = %484
  br label %498

498:                                              ; preds = %497, %464
  %499 = load i8*, i8** %11, align 8
  store i8* %499, i8** %5, align 8
  br label %511

500:                                              ; preds = %23
  %501 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %501, i32 0, i32 3
  %503 = load %struct.TYPE_15__*, %struct.TYPE_15__** %502, align 8
  %504 = load i32*, i32** %7, align 8
  %505 = load i8**, i8*** %8, align 8
  %506 = load i32**, i32*** %9, align 8
  %507 = call i8* @serf_bucket_read(%struct.TYPE_15__* %503, i32* %504, i8** %505, i32** %506)
  store i8* %507, i8** %5, align 8
  br label %511

508:                                              ; preds = %23
  %509 = load i8*, i8** @APR_EGENERAL, align 8
  store i8* %509, i8** %5, align 8
  br label %511

510:                                              ; preds = %192, %175, %158, %122, %90
  br label %23

511:                                              ; preds = %508, %500, %498, %495, %493, %482, %461, %454, %276, %263, %240, %220, %173, %156, %138, %120, %111, %86, %79, %38
  %512 = load i8*, i8** %5, align 8
  ret i8* %512
}

declare dso_local i8* @serf_bucket_read(%struct.TYPE_15__*, i32*, i8**, i32**) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EAGAIN(i8*) #1

declare dso_local i64 @getLong(i8*) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_14__*) #1

declare dso_local i32 @serf_bucket_aggregate_prepend(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i8*) #1

declare dso_local i32 @inflate(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @crc32(i64, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @SERF_BUCKET_SIMPLE_STRING_LEN(i8*, i32*, i32) #1

declare dso_local i32 @serf_bucket_aggregate_append(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @serf_bucket_aggregate_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
