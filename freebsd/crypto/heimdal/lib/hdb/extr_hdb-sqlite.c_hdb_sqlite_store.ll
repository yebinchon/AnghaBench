; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"BEGIN IMMEDIATE TRANSACTION\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"SQLite BEGIN TRANSACTION failed: %s\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@HDB_F_REPLACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"hdb-sqlite: COMMIT problem: %d: %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"hdb-sqlite: store rollback problem: %d: %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_23__*, i32, %struct.TYPE_21__*)* @hdb_sqlite_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdb_sqlite_store(i32 %0, %struct.TYPE_23__* %1, i32 %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_19__, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  store i8* null, i8** %13, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %16, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %18, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @hdb_sqlite_exec_stmt(i32 %26, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sqlite3_errmsg(i32 %41)
  %43 = call i32 @krb5_set_error_message(i32 %37, i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %290

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @krb5_unparse_name(i32 %45, i32* %49, i8** %13)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %290

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = call i32 @hdb_seal_keys(i32 %55, %struct.TYPE_23__* %56, %struct.TYPE_17__* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %290

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = call i32 @hdb_entry2value(i32 %64, %struct.TYPE_17__* %66, %struct.TYPE_19__* %17)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %290

71:                                               ; preds = %63
  %72 = load i32*, i32** %18, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @SQLITE_STATIC, align 4
  %75 = call i32 @sqlite3_bind_text(i32* %72, i32 1, i8* %73, i32 -1, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @hdb_sqlite_step(i32 %76, i32 %79, i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SQLITE_DONE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %145

85:                                               ; preds = %71
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @SQLITE_STATIC, align 4
  %94 = call i32 @sqlite3_bind_blob(i32* %88, i32 1, i32 %90, i32 %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @hdb_sqlite_step(i32 %95, i32 %98, i32* %101)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @sqlite3_clear_bindings(i32* %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @sqlite3_reset(i32* %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @SQLITE_DONE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %85
  br label %290

115:                                              ; preds = %85
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32, i32* @SQLITE_STATIC, align 4
  %121 = call i32 @sqlite3_bind_text(i32* %118, i32 1, i8* %119, i32 -1, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @hdb_sqlite_step(i32 %122, i32 %125, i32* %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @sqlite3_clear_bindings(i32* %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @sqlite3_reset(i32* %136)
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @SQLITE_DONE, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %115
  br label %290

142:                                              ; preds = %115
  %143 = load i32*, i32** %18, align 8
  %144 = call i32 @sqlite3_column_int64(i32* %143, i32 1)
  store i32 %144, i32* %12, align 4
  br label %201

145:                                              ; preds = %71
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @SQLITE_ROW, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %199

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @HDB_F_REPLACE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %290

155:                                              ; preds = %149
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @sqlite3_column_int64(i32* %156, i32 1)
  store i32 %157, i32* %12, align 4
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @sqlite3_bind_int64(i32* %160, i32 1, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @hdb_sqlite_step_once(i32 %163, %struct.TYPE_23__* %164, i32* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* @SQLITE_DONE, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %155
  br label %290

173:                                              ; preds = %155
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SQLITE_STATIC, align 4
  %182 = call i32 @sqlite3_bind_blob(i32* %176, i32 1, i32 %178, i32 %180, i32 %181)
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @sqlite3_bind_int64(i32* %185, i32 2, i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @hdb_sqlite_step_once(i32 %188, %struct.TYPE_23__* %189, i32* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @SQLITE_DONE, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %173
  br label %290

198:                                              ; preds = %173
  br label %200

199:                                              ; preds = %145
  br label %290

200:                                              ; preds = %198
  br label %201

201:                                              ; preds = %200, %142
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = call i32 @hdb_entry_get_aliases(%struct.TYPE_17__* %203, %struct.TYPE_22__** %15)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %209 = icmp eq %struct.TYPE_22__* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %207, %201
  br label %263

211:                                              ; preds = %207
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %259, %211
  %213 = load i32, i32* %11, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %213, %217
  br i1 %218, label %219, label %262

219:                                              ; preds = %212
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = call i32 @krb5_unparse_name(i32 %220, i32* %227, i8** %14)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %219
  %232 = load i8*, i8** %14, align 8
  %233 = call i32 @free(i8* %232)
  br label %290

234:                                              ; preds = %219
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = load i32, i32* @SQLITE_STATIC, align 4
  %240 = call i32 @sqlite3_bind_text(i32* %237, i32 1, i8* %238, i32 -1, i32 %239)
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @sqlite3_bind_int64(i32* %243, i32 2, i32 %244)
  %246 = load i32, i32* %6, align 4
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @hdb_sqlite_step_once(i32 %246, %struct.TYPE_23__* %247, i32* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i8*, i8** %14, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @SQLITE_DONE, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %234
  br label %290

258:                                              ; preds = %234
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %11, align 4
  br label %212

262:                                              ; preds = %212
  store i32 0, i32* %10, align 4
  br label %263

263:                                              ; preds = %262, %210
  %264 = load i8*, i8** %13, align 8
  %265 = call i32 @free(i8* %264)
  %266 = call i32 @krb5_data_free(%struct.TYPE_19__* %17)
  %267 = load i32*, i32** %18, align 8
  %268 = call i32 @sqlite3_clear_bindings(i32* %267)
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @sqlite3_reset(i32* %269)
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @EINVAL, align 4
  %276 = call i32 @hdb_sqlite_exec_stmt(i32 %271, i32 %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @SQLITE_OK, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %263
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @sqlite3_errmsg(i32 %285)
  %287 = call i32 @krb5_warnx(i32 %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %282, i32 %286)
  br label %288

288:                                              ; preds = %280, %263
  %289 = load i32, i32* %10, align 4
  store i32 %289, i32* %5, align 4
  br label %307

290:                                              ; preds = %257, %231, %199, %197, %172, %154, %141, %114, %70, %62, %53, %35
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @sqlite3_errmsg(i32 %295)
  %297 = call i32 @krb5_warnx(i32 %291, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %292, i32 %296)
  %298 = load i8*, i8** %13, align 8
  %299 = call i32 @free(i8* %298)
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @EINVAL, align 4
  %305 = call i32 @hdb_sqlite_exec_stmt(i32 %300, i32 %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %304)
  store i32 %305, i32* %10, align 4
  %306 = load i32, i32* %10, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %290, %288
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i32 @hdb_sqlite_exec_stmt(i32, i32, i8*, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @krb5_unparse_name(i32, i32*, i8**) #1

declare dso_local i32 @hdb_seal_keys(i32, %struct.TYPE_23__*, %struct.TYPE_17__*) #1

declare dso_local i32 @hdb_entry2value(i32, %struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @hdb_sqlite_step(i32, i32, i32*) #1

declare dso_local i32 @sqlite3_bind_blob(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @hdb_sqlite_step_once(i32, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @hdb_entry_get_aliases(%struct.TYPE_17__*, %struct.TYPE_22__**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_19__*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
