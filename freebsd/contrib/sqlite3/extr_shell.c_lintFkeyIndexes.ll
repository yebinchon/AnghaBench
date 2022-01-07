; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_lintFkeyIndexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_lintFkeyIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [954 x i8] c"SELECT      'EXPLAIN QUERY PLAN SELECT 1 FROM ' || quote(s.name) || ' WHERE '  || group_concat(quote(s.name) || '.' || quote(f.[from]) || '=?'   || fkey_collate_clause(       f.[table], COALESCE(f.[to], p.[name]), s.name, f.[from]),' AND '),      'SEARCH TABLE ' || s.name || ' USING COVERING INDEX*('  || group_concat('*=?', ' AND ') || ')',      s.name  || '(' || group_concat(f.[from],  ', ') || ')',      f.[table] || '(' || group_concat(COALESCE(f.[to], p.[name])) || ')',      'CREATE INDEX ' || quote(s.name ||'_'|| group_concat(f.[from], '_'))  || ' ON ' || quote(s.name) || '('  || group_concat(quote(f.[from]) ||        fkey_collate_clause(          f.[table], COALESCE(f.[to], p.[name]), s.name, f.[from]), ', ')  || ');',      f.[table] FROM sqlite_master AS s, pragma_foreign_key_list(s.name) AS f LEFT JOIN pragma_table_info AS p ON (pk-1=seq AND p.arg=f.[table]) GROUP BY s.name, f.id ORDER BY (CASE WHEN ? THEN f.[table] ELSE s.name END)\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"SEARCH TABLE * USING INTEGER PRIMARY KEY (rowid=?)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"-groupbyparent\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"Usage: %s %s ?-verbose? ?-groupbyparent?\0A\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"fkey_collate_clause\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@shellFkeyCollateClause = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Error: internal error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"-- Parent table %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%s%s --> %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"%s/* no extra indexes required for %s -> %s */\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i32)* @lintFkeyIndexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lintFkeyIndexes(%struct.TYPE_3__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i32* null, i32** %15, align 8
  store i8* getelementptr inbounds ([954 x i8], [954 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  store i32 2, i32* %12, align 4
  br label %36

36:                                               ; preds = %84, %3
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = load i8**, i8*** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen30(i8* %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i64 @sqlite3_strnicmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %83

59:                                               ; preds = %49, %40
  %60 = load i32, i32* %18, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = call i64 @sqlite3_strnicmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %11, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %82

72:                                               ; preds = %62, %59
  %73 = load i32*, i32** @stderr, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32*, i8*, ...) @raw_printf(i32* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %76, i8* %79)
  %81 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %258

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %36

87:                                               ; preds = %36
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @SQLITE_UTF8, align 4
  %90 = load i32, i32* @shellFkeyCollateClause, align 4
  %91 = call i32 @sqlite3_create_function(i32* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 %89, i32 0, i32 %90, i32 0, i32 0)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32*, i32** %8, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = call i32 @sqlite3_prepare_v2(i32* %96, i8* %97, i32 -1, i32** %15, i32 0)
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %87
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @sqlite3_bind_int(i32* %104, i32 1, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %251

111:                                              ; preds = %107
  store i8* null, i8** %20, align 8
  br label %112

112:                                              ; preds = %222, %111
  %113 = load i64, i64* @SQLITE_ROW, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i64 @sqlite3_step(i32* %114)
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %117, label %223

117:                                              ; preds = %112
  store i32 -1, i32* %21, align 4
  store i32* null, i32** %22, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = call i64 @sqlite3_column_text(i32* %118, i32 0)
  %120 = inttoptr i64 %119 to i8*
  store i8* %120, i8** %23, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = call i64 @sqlite3_column_text(i32* %121, i32 1)
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %24, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = call i64 @sqlite3_column_text(i32* %124, i32 2)
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %25, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = call i64 @sqlite3_column_text(i32* %127, i32 3)
  %129 = inttoptr i64 %128 to i8*
  store i8* %129, i8** %26, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i64 @sqlite3_column_text(i32* %130, i32 4)
  %132 = inttoptr i64 %131 to i8*
  store i8* %132, i8** %27, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i64 @sqlite3_column_text(i32* %133, i32 5)
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %28, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i8*, i8** %23, align 8
  %138 = call i32 @sqlite3_prepare_v2(i32* %136, i8* %137, i32 -1, i32** %22, i32 0)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @SQLITE_OK, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %117
  br label %223

143:                                              ; preds = %117
  %144 = load i64, i64* @SQLITE_ROW, align 8
  %145 = load i32*, i32** %22, align 8
  %146 = call i64 @sqlite3_step(i32* %145)
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %143
  %149 = load i32*, i32** %22, align 8
  %150 = call i64 @sqlite3_column_text(i32* %149, i32 3)
  %151 = inttoptr i64 %150 to i8*
  store i8* %151, i8** %29, align 8
  %152 = load i8*, i8** %24, align 8
  %153 = load i8*, i8** %29, align 8
  %154 = call i64 @sqlite3_strglob(i8* %152, i8* %153)
  %155 = icmp eq i64 0, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %148
  %157 = load i8*, i8** %17, align 8
  %158 = load i8*, i8** %29, align 8
  %159 = call i64 @sqlite3_strglob(i8* %157, i8* %158)
  %160 = icmp eq i64 0, %159
  br label %161

161:                                              ; preds = %156, %148
  %162 = phi i1 [ true, %148 ], [ %160, %156 ]
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %21, align 4
  br label %164

164:                                              ; preds = %161, %143
  %165 = load i32*, i32** %22, align 8
  %166 = call i32 @sqlite3_finalize(i32* %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @SQLITE_OK, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %223

171:                                              ; preds = %164
  %172 = load i32, i32* %21, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** @stderr, align 8
  %176 = call i32 (i32*, i8*, ...) @raw_printf(i32* %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %223

177:                                              ; preds = %171
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %21, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %183, %180
  %187 = load i8*, i8** %20, align 8
  %188 = icmp eq i8* %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load i8*, i8** %28, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = call i64 @sqlite3_stricmp(i8* %190, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189, %186
  %195 = load i32*, i32** %9, align 8
  %196 = load i8*, i8** %28, align 8
  %197 = call i32 (i32*, i8*, ...) @raw_printf(i32* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %196)
  %198 = load i8*, i8** %20, align 8
  %199 = call i32 @sqlite3_free(i8* %198)
  %200 = load i8*, i8** %28, align 8
  %201 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %200)
  store i8* %201, i8** %20, align 8
  br label %202

202:                                              ; preds = %194, %189, %183, %177
  %203 = load i32, i32* %21, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32*, i32** %9, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = load i8*, i8** %27, align 8
  %209 = load i8*, i8** %26, align 8
  %210 = call i32 (i32*, i8*, ...) @raw_printf(i32* %206, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %207, i8* %208, i8* %209)
  br label %221

211:                                              ; preds = %202
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32*, i32** %9, align 8
  %216 = load i8*, i8** %13, align 8
  %217 = load i8*, i8** %25, align 8
  %218 = load i8*, i8** %26, align 8
  %219 = call i32 (i32*, i8*, ...) @raw_printf(i32* %215, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i8* %216, i8* %217, i8* %218)
  br label %220

220:                                              ; preds = %214, %211
  br label %221

221:                                              ; preds = %220, %205
  br label %222

222:                                              ; preds = %221
  br label %112

223:                                              ; preds = %174, %170, %142, %112
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @sqlite3_free(i8* %224)
  %226 = load i32, i32* %14, align 4
  %227 = load i32, i32* @SQLITE_OK, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = load i32*, i32** @stderr, align 8
  %231 = load i32*, i32** %8, align 8
  %232 = call i8* @sqlite3_errmsg(i32* %231)
  %233 = call i32 (i32*, i8*, ...) @raw_printf(i32* %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %229, %223
  %235 = load i32*, i32** %15, align 8
  %236 = call i32 @sqlite3_finalize(i32* %235)
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @SQLITE_OK, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %234
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* @SQLITE_OK, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32, i32* %19, align 4
  store i32 %245, i32* %14, align 4
  %246 = load i32*, i32** @stderr, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = call i8* @sqlite3_errmsg(i32* %247)
  %249 = call i32 (i32*, i8*, ...) @raw_printf(i32* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %244, %240, %234
  br label %256

251:                                              ; preds = %107
  %252 = load i32*, i32** @stderr, align 8
  %253 = load i32*, i32** %8, align 8
  %254 = call i8* @sqlite3_errmsg(i32* %253)
  %255 = call i32 (i32*, i8*, ...) @raw_printf(i32* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %254)
  br label %256

256:                                              ; preds = %251, %250
  %257 = load i32, i32* %14, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %72
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @raw_printf(i32*, i8*, ...) #1

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
