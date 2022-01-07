; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_walCheckpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_walCheckpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64*, i64 }
%struct.TYPE_18__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_PASSIVE = common dso_local global i32 0, align 4
@WAL_NREADER = common dso_local global i32 0, align 4
@READMARK_NOT_USED = common dso_local global i64 0, align 8
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_FCNTL_SIZE_HINT = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_INTERRUPT = common dso_local global i32 0, align 4
@WAL_FRAME_HDRSIZE = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_RESTART = common dso_local global i32 0, align 4
@SQLITE_CHECKPOINT_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32 (i8*)*, i8*, i32, i32*)* @walCheckpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walCheckpoint(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i32 %2, i32 (i8*)* %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_22__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (i8*)* %3, i32 (i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %31 = load i32, i32* @SQLITE_OK, align 4
  store i32 %31, i32* %15, align 4
  store i32* null, i32** %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = call i32 @walPagesize(%struct.TYPE_23__* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp sle i32 %34, 32768
  %36 = zext i1 %35 to i32
  %37 = call i32 @testcase(i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = icmp sge i32 %38, 65536
  %40 = zext i1 %39 to i32
  %41 = call i32 @testcase(i32 %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = call %struct.TYPE_22__* @walCkptInfo(%struct.TYPE_23__* %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %23, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load volatile i64, i64* %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %354

52:                                               ; preds = %7
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %58 = icmp eq i32 (i8*)* %57, null
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ true, %52 ], [ %58, %56 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %20, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %21, align 8
  store i32 1, i32* %22, align 4
  br label %71

71:                                               ; preds = %133, %59
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* @WAL_NREADER, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %136

75:                                               ; preds = %71
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load volatile i64*, i64** %77, align 8
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %24, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %24, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %132

86:                                               ; preds = %75
  %87 = load i64, i64* %24, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %87, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @WAL_READ_LOCK(i32 %98)
  %100 = call i32 @walBusyLock(%struct.TYPE_23__* %95, i32 (i8*)* %96, i8* %97, i32 %99, i32 1)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %86
  %105 = load i32, i32* %22, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i64, i64* %20, align 8
  br label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @READMARK_NOT_USED, align 8
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i64 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load volatile i64*, i64** %114, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 %112, i64* %118, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @WAL_READ_LOCK(i32 %120)
  %122 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %119, i32 %121, i32 1)
  br label %131

123:                                              ; preds = %86
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @SQLITE_BUSY, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i64, i64* %24, align 8
  store i64 %128, i64* %20, align 8
  store i32 (i8*)* null, i32 (i8*)** %11, align 8
  br label %130

129:                                              ; preds = %123
  br label %425

130:                                              ; preds = %127
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %75
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  br label %71

136:                                              ; preds = %71
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load volatile i64, i64* %138, align 8
  %140 = load i64, i64* %20, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load volatile i64, i64* %145, align 8
  %147 = call i32 @walIteratorInit(%struct.TYPE_23__* %143, i64 %146, i32** %17)
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @SQLITE_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = load i32*, i32** %17, align 8
  %153 = icmp eq i32* %152, null
  br label %154

154:                                              ; preds = %151, %142
  %155 = phi i1 [ true, %142 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  br label %158

158:                                              ; preds = %154, %136
  %159 = load i32*, i32** %17, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %347

161:                                              ; preds = %158
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %163 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = call i32 @WAL_READ_LOCK(i32 0)
  %166 = call i32 @walBusyLock(%struct.TYPE_23__* %162, i32 (i8*)* %163, i8* %164, i32 %165, i32 1)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* @SQLITE_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %347

169:                                              ; preds = %161
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load volatile i64, i64* %171, align 8
  store i64 %172, i64* %25, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store volatile i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @CKPT_SYNC_FLAGS(i32 %179)
  %181 = call i32 @sqlite3OsSync(i32 %178, i32 %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @SQLITE_OK, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %169
  %186 = load i64, i64* %21, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %16, align 4
  %189 = mul nsw i32 %187, %188
  store i32 %189, i32* %26, align 4
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @sqlite3OsFileSize(i32 %192, i32* %27)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @SQLITE_OK, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %185
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %26, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SQLITE_FCNTL_SIZE_HINT, align 4
  %206 = call i32 @sqlite3OsFileControlHint(i32 %204, i32 %205, i32* %26)
  br label %207

207:                                              ; preds = %201, %197, %185
  br label %208

208:                                              ; preds = %207, %169
  br label %209

209:                                              ; preds = %294, %255, %208
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @SQLITE_OK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i32*, i32** %17, align 8
  %215 = call i64 @walIteratorNext(i32* %214, i64* %18, i64* %19)
  %216 = icmp eq i64 0, %215
  br label %217

217:                                              ; preds = %213, %209
  %218 = phi i1 [ false, %209 ], [ %216, %213 ]
  br i1 %218, label %219, label %295

219:                                              ; preds = %217
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %221 = load i64, i64* %19, align 8
  %222 = call i64 @walFramePgno(%struct.TYPE_23__* %220, i64 %221)
  %223 = load i64, i64* %18, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %219
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  br label %241

239:                                              ; preds = %232
  %240 = load i32, i32* @SQLITE_INTERRUPT, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  store i32 %242, i32* %15, align 4
  br label %295

243:                                              ; preds = %219
  %244 = load i64, i64* %19, align 8
  %245 = load i64, i64* %25, align 8
  %246 = icmp sle i64 %244, %245
  br i1 %246, label %255, label %247

247:                                              ; preds = %243
  %248 = load i64, i64* %19, align 8
  %249 = load i64, i64* %20, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i64, i64* %18, align 8
  %253 = load i64, i64* %21, align 8
  %254 = icmp sgt i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251, %247, %243
  br label %209

256:                                              ; preds = %251
  %257 = load i64, i64* %19, align 8
  %258 = load i32, i32* %16, align 4
  %259 = call i32 @walFrameOffset(i64 %257, i32 %258)
  %260 = load i32, i32* @WAL_FRAME_HDRSIZE, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, i32* %28, align 4
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %14, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %28, align 4
  %268 = call i32 @sqlite3OsRead(i32 %264, i32* %265, i32 %266, i32 %267)
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* @SQLITE_OK, align 4
  %271 = icmp ne i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %256
  br label %295

273:                                              ; preds = %256
  %274 = load i64, i64* %18, align 8
  %275 = sub nsw i64 %274, 1
  %276 = load i32, i32* %16, align 4
  %277 = sext i32 %276 to i64
  %278 = mul nsw i64 %275, %277
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %28, align 4
  %280 = load i32, i32* %28, align 4
  %281 = call i32 @IS_BIG_INT(i32 %280)
  %282 = call i32 @testcase(i32 %281)
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %28, align 4
  %289 = call i32 @sqlite3OsWrite(i32 %285, i32* %286, i32 %287, i32 %288)
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* @SQLITE_OK, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %273
  br label %295

294:                                              ; preds = %273
  br label %209

295:                                              ; preds = %293, %272, %241, %217
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* @SQLITE_OK, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %343

299:                                              ; preds = %295
  %300 = load i64, i64* %20, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %302 = call %struct.TYPE_18__* @walIndexHdr(%struct.TYPE_23__* %301)
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %300, %304
  br i1 %305, label %306, label %334

306:                                              ; preds = %299
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %16, align 4
  %312 = sext i32 %311 to i64
  %313 = mul nsw i64 %310, %312
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %29, align 4
  %315 = load i32, i32* %29, align 4
  %316 = call i32 @IS_BIG_INT(i32 %315)
  %317 = call i32 @testcase(i32 %316)
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %29, align 4
  %322 = call i32 @sqlite3OsTruncate(i32 %320, i32 %321)
  store i32 %322, i32* %15, align 4
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* @SQLITE_OK, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %333

326:                                              ; preds = %306
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %13, align 4
  %331 = call i32 @CKPT_SYNC_FLAGS(i32 %330)
  %332 = call i32 @sqlite3OsSync(i32 %329, i32 %331)
  store i32 %332, i32* %15, align 4
  br label %333

333:                                              ; preds = %326, %306
  br label %334

334:                                              ; preds = %333, %299
  %335 = load i32, i32* %15, align 4
  %336 = load i32, i32* @SQLITE_OK, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  %339 = load i64, i64* %20, align 8
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 0
  store volatile i64 %339, i64* %341, align 8
  br label %342

342:                                              ; preds = %338, %334
  br label %343

343:                                              ; preds = %342, %295
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %345 = call i32 @WAL_READ_LOCK(i32 0)
  %346 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %344, i32 %345, i32 1)
  br label %347

347:                                              ; preds = %343, %161, %158
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* @SQLITE_BUSY, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i32, i32* @SQLITE_OK, align 4
  store i32 %352, i32* %15, align 4
  br label %353

353:                                              ; preds = %351, %347
  br label %354

354:                                              ; preds = %353, %7
  %355 = load i32, i32* %15, align 4
  %356 = load i32, i32* @SQLITE_OK, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %424

358:                                              ; preds = %354
  %359 = load i32, i32* %10, align 4
  %360 = load i32, i32* @SQLITE_CHECKPOINT_PASSIVE, align 4
  %361 = icmp ne i32 %359, %360
  br i1 %361, label %362, label %424

362:                                              ; preds = %358
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @assert(i32 %365)
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 0
  %369 = load volatile i64, i64* %368, align 8
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp slt i64 %369, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %362
  %376 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %376, i32* %15, align 4
  br label %423

377:                                              ; preds = %362
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* @SQLITE_CHECKPOINT_RESTART, align 4
  %380 = icmp sge i32 %378, %379
  br i1 %380, label %381, label %422

381:                                              ; preds = %377
  %382 = call i32 @sqlite3_randomness(i32 4, i64* %30)
  %383 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 0
  %385 = load volatile i64, i64* %384, align 8
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 2
  %388 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp eq i64 %385, %389
  %391 = zext i1 %390 to i32
  %392 = call i32 @assert(i32 %391)
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %394 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %395 = load i8*, i8** %12, align 8
  %396 = call i32 @WAL_READ_LOCK(i32 1)
  %397 = load i32, i32* @WAL_NREADER, align 4
  %398 = sub nsw i32 %397, 1
  %399 = call i32 @walBusyLock(%struct.TYPE_23__* %393, i32 (i8*)* %394, i8* %395, i32 %396, i32 %398)
  store i32 %399, i32* %15, align 4
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* @SQLITE_OK, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %421

403:                                              ; preds = %381
  %404 = load i32, i32* %10, align 4
  %405 = load i32, i32* @SQLITE_CHECKPOINT_TRUNCATE, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %415

407:                                              ; preds = %403
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %409 = load i64, i64* %30, align 8
  %410 = call i32 @walRestartHdr(%struct.TYPE_23__* %408, i64 %409)
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @sqlite3OsTruncate(i32 %413, i32 0)
  store i32 %414, i32* %15, align 4
  br label %415

415:                                              ; preds = %407, %403
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %417 = call i32 @WAL_READ_LOCK(i32 1)
  %418 = load i32, i32* @WAL_NREADER, align 4
  %419 = sub nsw i32 %418, 1
  %420 = call i32 @walUnlockExclusive(%struct.TYPE_23__* %416, i32 %417, i32 %419)
  br label %421

421:                                              ; preds = %415, %381
  br label %422

422:                                              ; preds = %421, %377
  br label %423

423:                                              ; preds = %422, %375
  br label %424

424:                                              ; preds = %423, %358, %354
  br label %425

425:                                              ; preds = %424, %129
  %426 = load i32*, i32** %17, align 8
  %427 = call i32 @walIteratorFree(i32* %426)
  %428 = load i32, i32* %15, align 4
  ret i32 %428
}

declare dso_local i32 @walPagesize(%struct.TYPE_23__*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_22__* @walCkptInfo(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walBusyLock(%struct.TYPE_23__*, i32 (i8*)*, i8*, i32, i32) #1

declare dso_local i32 @WAL_READ_LOCK(i32) #1

declare dso_local i32 @walUnlockExclusive(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @walIteratorInit(%struct.TYPE_23__*, i64, i32**) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

declare dso_local i32 @CKPT_SYNC_FLAGS(i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i32*) #1

declare dso_local i32 @sqlite3OsFileControlHint(i32, i32, i32*) #1

declare dso_local i64 @walIteratorNext(i32*, i64*, i64*) #1

declare dso_local i64 @walFramePgno(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @walFrameOffset(i64, i32) #1

declare dso_local i32 @sqlite3OsRead(i32, i32*, i32, i32) #1

declare dso_local i32 @IS_BIG_INT(i32) #1

declare dso_local i32 @sqlite3OsWrite(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @walIndexHdr(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @sqlite3_randomness(i32, i64*) #1

declare dso_local i32 @walRestartHdr(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @walIteratorFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
