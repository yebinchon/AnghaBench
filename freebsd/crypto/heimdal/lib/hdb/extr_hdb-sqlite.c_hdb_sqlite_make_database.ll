; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_make_database.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_make_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@HDBSQLITE_CREATE_TABLES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HDBSQLITE_CREATE_TRIGGERS = common dso_local global i32 0, align 4
@HDBSQLITE_GET_VERSION = common dso_local global i32 0, align 4
@HDBSQLITE_FETCH = common dso_local global i32 0, align 4
@HDBSQLITE_GET_IDS = common dso_local global i32 0, align 4
@HDBSQLITE_ADD_ENTRY = common dso_local global i32 0, align 4
@HDBSQLITE_ADD_PRINCIPAL = common dso_local global i32 0, align 4
@HDBSQLITE_ADD_ALIAS = common dso_local global i32 0, align 4
@HDBSQLITE_DELETE_ALIASES = common dso_local global i32 0, align 4
@HDBSQLITE_UPDATE_ENTRY = common dso_local global i32 0, align 4
@HDBSQLITE_REMOVE = common dso_local global i32 0, align 4
@HDBSQLITE_GET_ALL_ENTRIES = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@HDBSQLITE_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"HDBSQLITE_VERSION mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i8*)* @hdb_sqlite_make_database to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdb_sqlite_make_database(i32 %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* @strdup(i8* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %4, align 4
  br label %241

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = call i32 @hdb_sqlite_open_database(i32 %26, %struct.TYPE_6__* %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %35 = call i32 @hdb_sqlite_open_database(i32 %32, %struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %221

39:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @HDBSQLITE_CREATE_TABLES, align 4
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @hdb_sqlite_exec_stmt(i32 %40, i64 %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %221

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @HDBSQLITE_CREATE_TRIGGERS, align 4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @hdb_sqlite_exec_stmt(i32 %51, i64 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %221

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* @HDBSQLITE_GET_VERSION, align 4
  %70 = call i32 @hdb_sqlite_prepare_stmt(i32 %63, i64 %66, i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %221

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 12
  %81 = load i32, i32* @HDBSQLITE_FETCH, align 4
  %82 = call i32 @hdb_sqlite_prepare_stmt(i32 %75, i64 %78, i32* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %221

86:                                               ; preds = %74
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 11
  %93 = load i32, i32* @HDBSQLITE_GET_IDS, align 4
  %94 = call i32 @hdb_sqlite_prepare_stmt(i32 %87, i64 %90, i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %221

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 10
  %105 = load i32, i32* @HDBSQLITE_ADD_ENTRY, align 4
  %106 = call i32 @hdb_sqlite_prepare_stmt(i32 %99, i64 %102, i32* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %221

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  %117 = load i32, i32* @HDBSQLITE_ADD_PRINCIPAL, align 4
  %118 = call i32 @hdb_sqlite_prepare_stmt(i32 %111, i64 %114, i32* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %221

122:                                              ; preds = %110
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 8
  %129 = load i32, i32* @HDBSQLITE_ADD_ALIAS, align 4
  %130 = call i32 @hdb_sqlite_prepare_stmt(i32 %123, i64 %126, i32* %128, i32 %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %221

134:                                              ; preds = %122
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 7
  %141 = load i32, i32* @HDBSQLITE_DELETE_ALIASES, align 4
  %142 = call i32 @hdb_sqlite_prepare_stmt(i32 %135, i64 %138, i32* %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %221

146:                                              ; preds = %134
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 6
  %153 = load i32, i32* @HDBSQLITE_UPDATE_ENTRY, align 4
  %154 = call i32 @hdb_sqlite_prepare_stmt(i32 %147, i64 %150, i32* %152, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %146
  br label %221

158:                                              ; preds = %146
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 5
  %165 = load i32, i32* @HDBSQLITE_REMOVE, align 4
  %166 = call i32 @hdb_sqlite_prepare_stmt(i32 %159, i64 %162, i32* %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %221

170:                                              ; preds = %158
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i32, i32* @HDBSQLITE_GET_ALL_ENTRIES, align 4
  %178 = call i32 @hdb_sqlite_prepare_stmt(i32 %171, i64 %174, i32* %176, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  br label %221

182:                                              ; preds = %170
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @hdb_sqlite_step(i32 %183, i64 %186, i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @SQLITE_ROW, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %182
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @sqlite3_column_double(i32 %197, i32 0)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %194, %182
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @sqlite3_reset(i32 %204)
  store i32 0, i32* %8, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HDBSQLITE_VERSION, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %201
  %212 = load i32, i32* @EINVAL, align 4
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @krb5_set_error_message(i32 %213, i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %201
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %221

220:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %241

221:                                              ; preds = %219, %181, %169, %157, %145, %133, %121, %109, %97, %85, %73, %60, %49, %38
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @sqlite3_close(i64 %229)
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @unlink(i32* %237)
  br label %239

239:                                              ; preds = %234, %231
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %220, %23
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @hdb_sqlite_open_database(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @hdb_sqlite_exec_stmt(i32, i64, i32, i32) #1

declare dso_local i32 @hdb_sqlite_prepare_stmt(i32, i64, i32*, i32) #1

declare dso_local i32 @hdb_sqlite_step(i32, i64, i32) #1

declare dso_local i64 @sqlite3_column_double(i32, i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @sqlite3_close(i64) #1

declare dso_local i32 @unlink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
