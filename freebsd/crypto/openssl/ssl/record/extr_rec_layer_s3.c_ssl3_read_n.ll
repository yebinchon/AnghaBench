; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_read_n.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_rec_layer_s3.c_ssl3_read_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i8*, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64, i64, i64 }

@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_APPLICATION_DATA = common dso_local global i8 0, align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_READ_N = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL_R_READ_BIO_NOT_SET = common dso_local global i32 0, align 4
@SSL_MODE_RELEASE_BUFFERS = common dso_local global i32 0, align 4
@SSL_NOTHING = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_read_n(%struct.TYPE_11__* %0, i64 %1, i64 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %16, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %352

24:                                               ; preds = %6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %18, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = call i32 @ssl3_setup_read_buffer(%struct.TYPE_11__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %352

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %113, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %16, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %99

51:                                               ; preds = %44
  %52 = load i64, i64* %16, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8* %65, i8** %17, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @SSL3_RT_APPLICATION_DATA, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %58
  %74 = load i8*, i8** %17, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, 8
  %79 = load i8*, i8** %17, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %78, %82
  %84 = icmp sge i32 %83, 128
  br i1 %84, label %85, label %97

85:                                               ; preds = %73
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8*, i8** %17, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @memmove(i8* %90, i8* %91, i64 %92)
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %85, %73, %58
  br label %98

98:                                               ; preds = %97, %54, %51
  br label %99

99:                                               ; preds = %98, %47
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %99, %38
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %14, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %16, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %17, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = icmp ne i8* %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %113
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load i8*, i8** %17, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %138, %139
  %141 = call i32 @memmove(i8* %133, i8* %137, i64 %140)
  %142 = load i8*, i8** %17, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i8* %142, i8** %145, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %146, %147
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %132, %129, %113
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = call i64 @SSL_IS_DTLS(%struct.TYPE_11__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i64, i64* %15, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %7, align 4
  br label %352

162:                                              ; preds = %158, %155
  %163 = load i64, i64* %15, align 8
  %164 = icmp ugt i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %15, align 8
  %168 = icmp ugt i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i64, i64* %15, align 8
  store i64 %170, i64* %9, align 8
  br label %171

171:                                              ; preds = %169, %165, %162
  br label %172

172:                                              ; preds = %171, %151
  %173 = load i64, i64* %15, align 8
  %174 = load i64, i64* %9, align 8
  %175 = icmp uge i64 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %177
  store i64 %182, i64* %180, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load i64, i64* %9, align 8
  %185 = sub i64 %183, %184
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* %9, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, %188
  store i64 %192, i64* %190, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i64*, i64** %13, align 8
  store i64 %193, i64* %194, align 8
  store i32 1, i32* %7, align 4
  br label %352

195:                                              ; preds = %172
  %196 = load i64, i64* %9, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = sub i64 %199, %202
  %204 = icmp ugt i64 %196, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %195
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %207 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %208 = load i32, i32* @SSL_F_SSL3_READ_N, align 4
  %209 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %210 = call i32 @SSLfatal(%struct.TYPE_11__* %206, i32 %207, i32 %208, i32 %209)
  store i32 -1, i32* %7, align 4
  br label %352

211:                                              ; preds = %195
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %219 = call i64 @SSL_IS_DTLS(%struct.TYPE_11__* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = load i64, i64* %9, align 8
  store i64 %222, i64* %10, align 8
  br label %248

223:                                              ; preds = %217, %211
  %224 = load i64, i64* %10, align 8
  %225 = load i64, i64* %9, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i64, i64* %9, align 8
  store i64 %228, i64* %10, align 8
  br label %229

229:                                              ; preds = %227, %223
  %230 = load i64, i64* %10, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = sub i64 %233, %236
  %238 = icmp ugt i64 %230, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %229
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = sub i64 %242, %245
  store i64 %246, i64* %10, align 8
  br label %247

247:                                              ; preds = %239, %229
  br label %248

248:                                              ; preds = %247, %221
  br label %249

249:                                              ; preds = %329, %248
  %250 = load i64, i64* %15, align 8
  %251 = load i64, i64* %9, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %330

253:                                              ; preds = %249
  store i64 0, i64* %19, align 8
  %254 = call i32 (...) @clear_sys_error()
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %281

259:                                              ; preds = %253
  %260 = load i32, i32* @SSL_READING, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i8*, i8** %17, align 8
  %267 = load i64, i64* %14, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  %269 = load i64, i64* %15, align 8
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  %271 = load i64, i64* %10, align 8
  %272 = load i64, i64* %15, align 8
  %273 = sub i64 %271, %272
  %274 = call i32 @BIO_read(i32* %265, i8* %270, i64 %273)
  store i32 %274, i32* %20, align 4
  %275 = load i32, i32* %20, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %259
  %278 = load i32, i32* %20, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %19, align 8
  br label %280

280:                                              ; preds = %277, %259
  br label %287

281:                                              ; preds = %253
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %283 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %284 = load i32, i32* @SSL_F_SSL3_READ_N, align 4
  %285 = load i32, i32* @SSL_R_READ_BIO_NOT_SET, align 4
  %286 = call i32 @SSLfatal(%struct.TYPE_11__* %282, i32 %283, i32 %284, i32 %285)
  store i32 -1, i32* %20, align 4
  br label %287

287:                                              ; preds = %281, %280
  %288 = load i32, i32* %20, align 4
  %289 = icmp sle i32 %288, 0
  br i1 %289, label %290, label %315

290:                                              ; preds = %287
  %291 = load i64, i64* %15, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  store i64 %291, i64* %293, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @SSL_MODE_RELEASE_BUFFERS, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %290
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %302 = call i64 @SSL_IS_DTLS(%struct.TYPE_11__* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %300
  %305 = load i64, i64* %14, align 8
  %306 = load i64, i64* %15, align 8
  %307 = add i64 %305, %306
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %311 = call i32 @ssl3_release_read_buffer(%struct.TYPE_11__* %310)
  br label %312

312:                                              ; preds = %309, %304
  br label %313

313:                                              ; preds = %312, %300, %290
  %314 = load i32, i32* %20, align 4
  store i32 %314, i32* %7, align 4
  br label %352

315:                                              ; preds = %287
  %316 = load i64, i64* %19, align 8
  %317 = load i64, i64* %15, align 8
  %318 = add i64 %317, %316
  store i64 %318, i64* %15, align 8
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %320 = call i64 @SSL_IS_DTLS(%struct.TYPE_11__* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* %15, align 8
  %325 = icmp ugt i64 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %322
  %327 = load i64, i64* %15, align 8
  store i64 %327, i64* %9, align 8
  br label %328

328:                                              ; preds = %326, %322
  br label %329

329:                                              ; preds = %328, %315
  br label %249

330:                                              ; preds = %249
  %331 = load i64, i64* %9, align 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = add i64 %334, %331
  store i64 %335, i64* %333, align 8
  %336 = load i64, i64* %15, align 8
  %337 = load i64, i64* %9, align 8
  %338 = sub i64 %336, %337
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  store i64 %338, i64* %340, align 8
  %341 = load i64, i64* %9, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %345, %341
  store i64 %346, i64* %344, align 8
  %347 = load i32, i32* @SSL_NOTHING, align 4
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  %350 = load i64, i64* %9, align 8
  %351 = load i64*, i64** %13, align 8
  store i64 %350, i64* %351, align 8
  store i32 1, i32* %7, align 4
  br label %352

352:                                              ; preds = %330, %313, %205, %176, %161, %36, %23
  %353 = load i32, i32* %7, align 4
  ret i32 %353
}

declare dso_local i32 @ssl3_setup_read_buffer(%struct.TYPE_11__*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_11__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @clear_sys_error(...) #1

declare dso_local i32 @BIO_read(i32*, i8*, i64) #1

declare dso_local i32 @ssl3_release_read_buffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
