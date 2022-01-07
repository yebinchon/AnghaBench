; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_streamsInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_make_streamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64 }
%struct.coder = type { i64, i32, i64* }
%struct._7zip = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { i32, %struct.file* }

@_7Z_COPY = common dso_local global i64 0, align 8
@kPackInfo = common dso_local global i32 0, align 4
@kSize = common dso_local global i32 0, align 4
@kEnd = common dso_local global i32 0, align 4
@kUnPackInfo = common dso_local global i32 0, align 4
@kFolder = common dso_local global i32 0, align 4
@ARCHIVE_Z_RUN = common dso_local global i32 0, align 4
@kCodersUnPackSize = common dso_local global i32 0, align 4
@kCRC = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i32, i32, i32, i32, %struct.coder*, i32, i32)* @make_streamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_streamsInfo(%struct.archive_write* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.coder* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive_write*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.coder*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._7zip*, align 8
  %19 = alloca [8 x i64], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.file*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.file*, align 8
  %28 = alloca [4 x i64], align 16
  store %struct.archive_write* %0, %struct.archive_write** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.coder* %5, %struct.coder** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %29 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %30 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct._7zip*
  store %struct._7zip* %32, %struct._7zip** %18, align 8
  %33 = load %struct.coder*, %struct.coder** %15, align 8
  %34 = getelementptr inbounds %struct.coder, %struct.coder* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @_7Z_COPY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %8
  %39 = load %struct._7zip*, %struct._7zip** %18, align 8
  %40 = getelementptr inbounds %struct._7zip, %struct._7zip* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %20, align 4
  br label %44

43:                                               ; preds = %8
  store i32 1, i32* %20, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %46 = load i32, i32* @kPackInfo, align 4
  %47 = call i32 @enc_uint64(%struct.archive_write* %45, i32 %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %24, align 4
  store i32 %51, i32* %9, align 4
  br label %406

52:                                               ; preds = %44
  %53 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @enc_uint64(%struct.archive_write* %53, i32 %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %24, align 4
  store i32 %59, i32* %9, align 4
  br label %406

60:                                               ; preds = %52
  %61 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @enc_uint64(%struct.archive_write* %61, i32 %62)
  store i32 %63, i32* %24, align 4
  %64 = load i32, i32* %24, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %24, align 4
  store i32 %67, i32* %9, align 4
  br label %406

68:                                               ; preds = %60
  %69 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %70 = load i32, i32* @kSize, align 4
  %71 = call i32 @enc_uint64(%struct.archive_write* %69, i32 %70)
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %24, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %24, align 4
  store i32 %75, i32* %9, align 4
  br label %406

76:                                               ; preds = %68
  %77 = load i32, i32* %20, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load %struct._7zip*, %struct._7zip** %18, align 8
  %81 = getelementptr inbounds %struct._7zip, %struct._7zip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.file*, %struct.file** %82, align 8
  store %struct.file* %83, %struct.file** %25, align 8
  br label %84

84:                                               ; preds = %104, %79
  %85 = load %struct.file*, %struct.file** %25, align 8
  %86 = icmp ne %struct.file* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load %struct.file*, %struct.file** %25, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %108

93:                                               ; preds = %87
  %94 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %95 = load %struct.file*, %struct.file** %25, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @enc_uint64(%struct.archive_write* %94, i32 %97)
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %24, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %24, align 4
  store i32 %102, i32* %9, align 4
  br label %406

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.file*, %struct.file** %25, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  %107 = load %struct.file*, %struct.file** %106, align 8
  store %struct.file* %107, %struct.file** %25, align 8
  br label %84

108:                                              ; preds = %92, %84
  br label %118

109:                                              ; preds = %76
  %110 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @enc_uint64(%struct.archive_write* %110, i32 %111)
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %24, align 4
  store i32 %116, i32* %9, align 4
  br label %406

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %108
  %119 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %120 = load i32, i32* @kEnd, align 4
  %121 = call i32 @enc_uint64(%struct.archive_write* %119, i32 %120)
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %24, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %24, align 4
  store i32 %125, i32* %9, align 4
  br label %406

126:                                              ; preds = %118
  %127 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %128 = load i32, i32* @kUnPackInfo, align 4
  %129 = call i32 @enc_uint64(%struct.archive_write* %127, i32 %128)
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %24, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %24, align 4
  store i32 %133, i32* %9, align 4
  br label %406

134:                                              ; preds = %126
  %135 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %136 = load i32, i32* @kFolder, align 4
  %137 = call i32 @enc_uint64(%struct.archive_write* %135, i32 %136)
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %24, align 4
  store i32 %141, i32* %9, align 4
  br label %406

142:                                              ; preds = %134
  %143 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @enc_uint64(%struct.archive_write* %143, i32 %144)
  store i32 %145, i32* %24, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* %24, align 4
  store i32 %149, i32* %9, align 4
  br label %406

150:                                              ; preds = %142
  %151 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %152 = call i32 @enc_uint64(%struct.archive_write* %151, i32 0)
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %24, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %9, align 4
  br label %406

157:                                              ; preds = %150
  store i32 0, i32* %21, align 4
  br label %158

158:                                              ; preds = %291, %157
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %294

162:                                              ; preds = %158
  %163 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @enc_uint64(%struct.archive_write* %163, i32 %164)
  store i32 %165, i32* %24, align 4
  %166 = load i32, i32* %24, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %24, align 4
  store i32 %169, i32* %9, align 4
  br label %406

170:                                              ; preds = %162
  store i32 0, i32* %23, align 4
  br label %171

171:                                              ; preds = %287, %170
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %290

175:                                              ; preds = %171
  %176 = load %struct.coder*, %struct.coder** %15, align 8
  %177 = load i32, i32* %23, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.coder, %struct.coder* %176, i64 %178
  %180 = getelementptr inbounds %struct.coder, %struct.coder* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %26, align 4
  %183 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 0
  %184 = load i32, i32* %26, align 4
  %185 = call i32 @archive_be64enc(i64* %183, i32 %184)
  store i32 8, i32* %22, align 4
  br label %186

186:                                              ; preds = %198, %175
  %187 = load i32, i32* %22, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %186
  %190 = load i32, i32* %22, align 4
  %191 = sub nsw i32 8, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %201

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %22, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %22, align 4
  br label %186

201:                                              ; preds = %196, %186
  %202 = load i32, i32* %22, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 1, i32* %22, align 4
  br label %205

205:                                              ; preds = %204, %201
  %206 = load %struct.coder*, %struct.coder** %15, align 8
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.coder, %struct.coder* %206, i64 %208
  %210 = getelementptr inbounds %struct.coder, %struct.coder* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %205
  %214 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %215 = load i32, i32* %22, align 4
  %216 = or i32 %215, 32
  %217 = call i32 @enc_uint64(%struct.archive_write* %214, i32 %216)
  store i32 %217, i32* %24, align 4
  br label %222

218:                                              ; preds = %205
  %219 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %220 = load i32, i32* %22, align 4
  %221 = call i32 @enc_uint64(%struct.archive_write* %219, i32 %220)
  store i32 %221, i32* %24, align 4
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i32, i32* %24, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = load i32, i32* %24, align 4
  store i32 %226, i32* %9, align 4
  br label %406

227:                                              ; preds = %222
  %228 = load i32, i32* %22, align 4
  %229 = and i32 %228, 15
  store i32 %229, i32* %22, align 4
  %230 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %231 = load i32, i32* %22, align 4
  %232 = sub nsw i32 8, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %233
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %237 = call i64 @compress_out(%struct.archive_write* %230, i64* %234, i32 %235, i32 %236)
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %24, align 4
  %239 = load i32, i32* %24, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %227
  %242 = load i32, i32* %24, align 4
  store i32 %242, i32* %9, align 4
  br label %406

243:                                              ; preds = %227
  %244 = load %struct.coder*, %struct.coder** %15, align 8
  %245 = load i32, i32* %23, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.coder, %struct.coder* %244, i64 %246
  %248 = getelementptr inbounds %struct.coder, %struct.coder* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %286

251:                                              ; preds = %243
  %252 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %253 = load %struct.coder*, %struct.coder** %15, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.coder, %struct.coder* %253, i64 %255
  %257 = getelementptr inbounds %struct.coder, %struct.coder* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @enc_uint64(%struct.archive_write* %252, i32 %258)
  store i32 %259, i32* %24, align 4
  %260 = load i32, i32* %24, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %251
  %263 = load i32, i32* %24, align 4
  store i32 %263, i32* %9, align 4
  br label %406

264:                                              ; preds = %251
  %265 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %266 = load %struct.coder*, %struct.coder** %15, align 8
  %267 = load i32, i32* %23, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.coder, %struct.coder* %266, i64 %268
  %270 = getelementptr inbounds %struct.coder, %struct.coder* %269, i32 0, i32 2
  %271 = load i64*, i64** %270, align 8
  %272 = load %struct.coder*, %struct.coder** %15, align 8
  %273 = load i32, i32* %23, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.coder, %struct.coder* %272, i64 %274
  %276 = getelementptr inbounds %struct.coder, %struct.coder* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %279 = call i64 @compress_out(%struct.archive_write* %265, i64* %271, i32 %277, i32 %278)
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %24, align 4
  %281 = load i32, i32* %24, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %264
  %284 = load i32, i32* %24, align 4
  store i32 %284, i32* %9, align 4
  br label %406

285:                                              ; preds = %264
  br label %286

286:                                              ; preds = %285, %243
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %23, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %23, align 4
  br label %171

290:                                              ; preds = %171
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %21, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %21, align 4
  br label %158

294:                                              ; preds = %158
  %295 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %296 = load i32, i32* @kCodersUnPackSize, align 4
  %297 = call i32 @enc_uint64(%struct.archive_write* %295, i32 %296)
  store i32 %297, i32* %24, align 4
  %298 = load i32, i32* %24, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = load i32, i32* %24, align 4
  store i32 %301, i32* %9, align 4
  br label %406

302:                                              ; preds = %294
  %303 = load i32, i32* %20, align 4
  %304 = icmp sgt i32 %303, 1
  br i1 %304, label %305, label %335

305:                                              ; preds = %302
  %306 = load %struct._7zip*, %struct._7zip** %18, align 8
  %307 = getelementptr inbounds %struct._7zip, %struct._7zip* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load %struct.file*, %struct.file** %308, align 8
  store %struct.file* %309, %struct.file** %27, align 8
  br label %310

310:                                              ; preds = %330, %305
  %311 = load %struct.file*, %struct.file** %27, align 8
  %312 = icmp ne %struct.file* %311, null
  br i1 %312, label %313, label %334

313:                                              ; preds = %310
  %314 = load %struct.file*, %struct.file** %27, align 8
  %315 = getelementptr inbounds %struct.file, %struct.file* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  br label %334

319:                                              ; preds = %313
  %320 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %321 = load %struct.file*, %struct.file** %27, align 8
  %322 = getelementptr inbounds %struct.file, %struct.file* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @enc_uint64(%struct.archive_write* %320, i32 %323)
  store i32 %324, i32* %24, align 4
  %325 = load i32, i32* %24, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %319
  %328 = load i32, i32* %24, align 4
  store i32 %328, i32* %9, align 4
  br label %406

329:                                              ; preds = %319
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.file*, %struct.file** %27, align 8
  %332 = getelementptr inbounds %struct.file, %struct.file* %331, i32 0, i32 1
  %333 = load %struct.file*, %struct.file** %332, align 8
  store %struct.file* %333, %struct.file** %27, align 8
  br label %310

334:                                              ; preds = %318, %310
  br label %344

335:                                              ; preds = %302
  %336 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %337 = load i32, i32* %13, align 4
  %338 = call i32 @enc_uint64(%struct.archive_write* %336, i32 %337)
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %24, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = load i32, i32* %24, align 4
  store i32 %342, i32* %9, align 4
  br label %406

343:                                              ; preds = %335
  br label %344

344:                                              ; preds = %343, %334
  %345 = load i32, i32* %16, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %376, label %347

347:                                              ; preds = %344
  %348 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %349 = load i32, i32* @kCRC, align 4
  %350 = call i32 @enc_uint64(%struct.archive_write* %348, i32 %349)
  store i32 %350, i32* %24, align 4
  %351 = load i32, i32* %24, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %347
  %354 = load i32, i32* %24, align 4
  store i32 %354, i32* %9, align 4
  br label %406

355:                                              ; preds = %347
  %356 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %357 = call i32 @enc_uint64(%struct.archive_write* %356, i32 1)
  store i32 %357, i32* %24, align 4
  %358 = load i32, i32* %24, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %355
  %361 = load i32, i32* %24, align 4
  store i32 %361, i32* %9, align 4
  br label %406

362:                                              ; preds = %355
  %363 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %364 = load i32, i32* %17, align 4
  %365 = call i32 @archive_le32enc(i64* %363, i32 %364)
  %366 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %367 = getelementptr inbounds [4 x i64], [4 x i64]* %28, i64 0, i64 0
  %368 = load i32, i32* @ARCHIVE_Z_RUN, align 4
  %369 = call i64 @compress_out(%struct.archive_write* %366, i64* %367, i32 4, i32 %368)
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %24, align 4
  %371 = load i32, i32* %24, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %362
  %374 = load i32, i32* %24, align 4
  store i32 %374, i32* %9, align 4
  br label %406

375:                                              ; preds = %362
  br label %376

376:                                              ; preds = %375, %344
  %377 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %378 = load i32, i32* @kEnd, align 4
  %379 = call i32 @enc_uint64(%struct.archive_write* %377, i32 %378)
  store i32 %379, i32* %24, align 4
  %380 = load i32, i32* %24, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %376
  %383 = load i32, i32* %24, align 4
  store i32 %383, i32* %9, align 4
  br label %406

384:                                              ; preds = %376
  %385 = load i32, i32* %16, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %396

387:                                              ; preds = %384
  %388 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %389 = load %struct.coder*, %struct.coder** %15, align 8
  %390 = call i32 @make_substreamsInfo(%struct.archive_write* %388, %struct.coder* %389)
  store i32 %390, i32* %24, align 4
  %391 = load i32, i32* %24, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %387
  %394 = load i32, i32* %24, align 4
  store i32 %394, i32* %9, align 4
  br label %406

395:                                              ; preds = %387
  br label %396

396:                                              ; preds = %395, %384
  %397 = load %struct.archive_write*, %struct.archive_write** %10, align 8
  %398 = load i32, i32* @kEnd, align 4
  %399 = call i32 @enc_uint64(%struct.archive_write* %397, i32 %398)
  store i32 %399, i32* %24, align 4
  %400 = load i32, i32* %24, align 4
  %401 = icmp slt i32 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %396
  %403 = load i32, i32* %24, align 4
  store i32 %403, i32* %9, align 4
  br label %406

404:                                              ; preds = %396
  %405 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %405, i32* %9, align 4
  br label %406

406:                                              ; preds = %404, %402, %393, %382, %373, %360, %353, %341, %327, %300, %283, %262, %241, %225, %168, %155, %148, %140, %132, %124, %115, %101, %74, %66, %58, %50
  %407 = load i32, i32* %9, align 4
  ret i32 %407
}

declare dso_local i32 @enc_uint64(%struct.archive_write*, i32) #1

declare dso_local i32 @archive_be64enc(i64*, i32) #1

declare dso_local i64 @compress_out(%struct.archive_write*, i64*, i32, i32) #1

declare dso_local i32 @archive_le32enc(i64*, i32) #1

declare dso_local i32 @make_substreamsInfo(%struct.archive_write*, %struct.coder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
