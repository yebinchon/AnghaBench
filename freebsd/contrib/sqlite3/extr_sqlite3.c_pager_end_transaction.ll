; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pager_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_pager_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@RESERVED_LOCK = common dso_local global i64 0, align 8
@SQLITE_IOCAP_BATCH_ATOMIC = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_PERSIST = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_WAL = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_DELETE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_MEMORY = common dso_local global i64 0, align 8
@MEMDB = common dso_local global i64 0, align 8
@EXCLUSIVE_LOCK = common dso_local global i64 0, align 8
@SQLITE_FCNTL_COMMIT_PHASETWO = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@SHARED_LOCK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@pager_set_pagehash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i32)* @pager_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pager_end_transaction(%struct.TYPE_15__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = call i32 @assert_pager_state(%struct.TYPE_15__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAGER_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RESERVED_LOCK, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @SQLITE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %345

36:                                               ; preds = %28, %3
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = call i32 @releaseAllSavepoints(%struct.TYPE_15__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @isOpen(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sqlite3OsDeviceCharacteristics(i32 %52)
  %54 = load i32, i32* @SQLITE_IOCAP_BATCH_ATOMIC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %49, %44, %36
  %58 = phi i1 [ true, %44 ], [ true, %36 ], [ %56, %49 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 17
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @isOpen(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %209

66:                                               ; preds = %57
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = call i64 @pagerUseWal(%struct.TYPE_15__* %67)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 17
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @sqlite3JournalIsInMemory(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @sqlite3OsClose(i32 %81)
  br label %208

83:                                               ; preds = %66
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PAGER_JOURNALMODE_TRUNCATE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %8, align 4
  br label %118

96:                                               ; preds = %89
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 17
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sqlite3OsTruncate(i32 %99, i32 0)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 20
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 17
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 19
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @sqlite3OsSync(i32 %112, i32 %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %109, %104, %96
  br label %118

118:                                              ; preds = %117, %94
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  br label %207

121:                                              ; preds = %83
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PAGER_JOURNALMODE_PERSIST, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %138, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %127
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %132, %121
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 18
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %142, %138
  %148 = phi i1 [ true, %138 ], [ %146, %142 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @zeroJournalHdr(%struct.TYPE_15__* %139, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  store i64 0, i64* %152, align 8
  br label %206

153:                                              ; preds = %132, %127
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 18
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %10, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 17
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @sqlite3JournalIsInMemory(i32 %162)
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PAGER_JOURNALMODE_DELETE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %184, label %172

172:                                              ; preds = %153
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @PAGER_JOURNALMODE_MEMORY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %183 = icmp eq i64 %181, %182
  br label %184

184:                                              ; preds = %178, %172, %153
  %185 = phi i1 [ true, %172 ], [ true, %153 ], [ %183, %178 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 17
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @sqlite3OsClose(i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %184
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 16
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 15
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 14
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @sqlite3OsDelete(i32 %197, i32 %200, i32 %203)
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %194, %184
  br label %206

206:                                              ; preds = %205, %147
  br label %207

207:                                              ; preds = %206, %118
  br label %208

208:                                              ; preds = %207, %78
  br label %209

209:                                              ; preds = %208, %57
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @sqlite3BitvecDestroy(i64 %212)
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 13
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @SQLITE_OK, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %247

221:                                              ; preds = %209
  %222 = load i64, i64* @MEMDB, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %221
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i64 @pagerFlushOnCommit(%struct.TYPE_15__* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %224, %221
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @sqlite3PcacheCleanAll(i32 %232)
  br label %239

234:                                              ; preds = %224
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 12
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @sqlite3PcacheClearWritable(i32 %237)
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 12
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @sqlite3PcacheTruncate(i32 %242, i64 %245)
  br label %247

247:                                              ; preds = %239, %209
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %249 = call i64 @pagerUseWal(%struct.TYPE_15__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @sqlite3WalEndWriteTransaction(i32 %254)
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @SQLITE_OK, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  br label %290

261:                                              ; preds = %247
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @SQLITE_OK, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %289

265:                                              ; preds = %261
  %266 = load i32, i32* %7, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %265
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp sgt i64 %271, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %268
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @EXCLUSIVE_LOCK, align 8
  %281 = icmp eq i64 %279, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @pager_truncate(%struct.TYPE_15__* %284, i64 %287)
  store i32 %288, i32* %8, align 4
  br label %289

289:                                              ; preds = %276, %268, %265, %261
  br label %290

290:                                              ; preds = %289, %251
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @SQLITE_OK, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %290
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %294
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 11
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @SQLITE_FCNTL_COMMIT_PHASETWO, align 4
  %302 = call i32 @sqlite3OsFileControl(i32 %300, i32 %301, i32 0)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @SQLITE_NOTFOUND, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = load i32, i32* @SQLITE_OK, align 4
  store i32 %307, i32* %8, align 4
  br label %308

308:                                              ; preds = %306, %297
  br label %309

309:                                              ; preds = %308, %294, %290
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 10
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %330, label %314

314:                                              ; preds = %309
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %316 = call i64 @pagerUseWal(%struct.TYPE_15__* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %314
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @sqlite3WalExclusiveMode(i32 %321, i32 0)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %318, %314
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %326 = load i32, i32* @SHARED_LOCK, align 4
  %327 = call i32 @pagerUnlockDb(%struct.TYPE_15__* %325, i32 %326)
  store i32 %327, i32* %9, align 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 8
  store i64 0, i64* %329, align 8
  br label %330

330:                                              ; preds = %324, %318, %309
  %331 = load i64, i64* @PAGER_READER, align 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  store i64 %331, i64* %333, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 7
  store i64 0, i64* %335, align 8
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* @SQLITE_OK, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %330
  %340 = load i32, i32* %9, align 4
  br label %343

341:                                              ; preds = %330
  %342 = load i32, i32* %8, align 4
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i32 [ %340, %339 ], [ %342, %341 ]
  store i32 %344, i32* %4, align 4
  br label %345

345:                                              ; preds = %343, %34
  %346 = load i32, i32* %4, align 4
  ret i32 %346
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_15__*) #1

declare dso_local i32 @releaseAllSavepoints(%struct.TYPE_15__*) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_15__*) #1

declare dso_local i64 @sqlite3JournalIsInMemory(i32) #1

declare dso_local i32 @sqlite3OsClose(i32) #1

declare dso_local i32 @sqlite3OsTruncate(i32, i32) #1

declare dso_local i32 @sqlite3OsSync(i32, i32) #1

declare dso_local i32 @zeroJournalHdr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3OsDelete(i32, i32, i32) #1

declare dso_local i32 @sqlite3BitvecDestroy(i64) #1

declare dso_local i64 @pagerFlushOnCommit(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3PcacheCleanAll(i32) #1

declare dso_local i32 @sqlite3PcacheClearWritable(i32) #1

declare dso_local i32 @sqlite3PcacheTruncate(i32, i64) #1

declare dso_local i32 @sqlite3WalEndWriteTransaction(i32) #1

declare dso_local i32 @pager_truncate(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @sqlite3OsFileControl(i32, i32, i32) #1

declare dso_local i64 @sqlite3WalExclusiveMode(i32, i32) #1

declare dso_local i32 @pagerUnlockDb(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
