; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shell_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shell_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32*, i64, i64, i64, i32, i64, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@shell_exec.zStmtSql = internal global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SHFLG_Echo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@SQLITE_DBCONFIG_TRIGGER_EQP = common dso_local global i32 0, align 4
@AUTOEQP_trigger = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"EXPLAIN QUERY PLAN %s\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@AUTOEQP_full = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"EXPLAIN %s\00", align 1
@MODE_Explain = common dso_local global i64 0, align 8
@MODE_EQP = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i8**)* @shell_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shell_exec(%struct.TYPE_16__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* null, i32** %8, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i8**, i8*** %7, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8**, i8*** %7, align 8
  store i8* null, i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = call i32 @expertHandleSQL(%struct.TYPE_16__* %34, i8* %35, i8** %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp ne i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i8**, i8*** %7, align 8
  %44 = call i32 @expertFinish(%struct.TYPE_16__* %38, i32 %42, i8** %43)
  store i32 %44, i32* %4, align 4
  br label %380

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %377, %87, %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ false, %46 ], [ %55, %52 ]
  br i1 %57, label %58, label %378

58:                                               ; preds = %56
  %59 = load i32*, i32** %12, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @sqlite3_prepare_v2(i32* %59, i8* %60, i32 -1, i32** %8, i8** %11)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i8**, i8*** %7, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %12, align 8
  %70 = call i8* @save_err_msg(i32* %69)
  %71 = load i8**, i8*** %7, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  br label %377

73:                                               ; preds = %58
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %6, align 8
  br label %78

78:                                               ; preds = %84, %76
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @IsSpace(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  br label %78

87:                                               ; preds = %78
  br label %46

88:                                               ; preds = %73
  %89 = load i32*, i32** %8, align 8
  %90 = call i8* @sqlite3_sql(i32* %89)
  store i8* %90, i8** @shell_exec.zStmtSql, align 8
  %91 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @shell_exec.zStmtSql, align 8
  br label %94

94:                                               ; preds = %93, %88
  br label %95

95:                                               ; preds = %101, %94
  %96 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @IsSpace(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** @shell_exec.zStmtSql, align 8
  br label %95

104:                                              ; preds = %95
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = icmp ne %struct.TYPE_16__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 8
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %104
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = icmp ne %struct.TYPE_16__* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = load i32, i32* @SHFLG_Echo, align 4
  %119 = call i64 @ShellHasFlag(%struct.TYPE_16__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i8*, i8** @shell_exec.zStmtSql, align 8
  br label %131

129:                                              ; preds = %121
  %130 = load i8*, i8** %6, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ]
  %133 = call i32 @utf8_printf(i32 %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %131, %116, %113
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = icmp ne %struct.TYPE_16__* %135, null
  br i1 %136, label %137, label %263

137:                                              ; preds = %134
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %263

142:                                              ; preds = %137
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @sqlite3_stmt_isexplain(i32* %143)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %263

146:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  %147 = call i32 (...) @disable_debug_trace_modes()
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* @SQLITE_DBCONFIG_TRIGGER_EQP, align 4
  %150 = call i32 @sqlite3_db_config(i32* %148, i32 %149, i32 -1, i32* %15)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AUTOEQP_trigger, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* @SQLITE_DBCONFIG_TRIGGER_EQP, align 4
  %159 = call i32 @sqlite3_db_config(i32* %157, i32 %158, i32 1, i32* null)
  br label %160

160:                                              ; preds = %156, %146
  %161 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %162 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  store i8* %162, i8** %14, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = call i32 @sqlite3_prepare_v2(i32* %163, i8* %164, i32 -1, i32** %13, i8** null)
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @SQLITE_OK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %160
  br label %170

170:                                              ; preds = %191, %169
  %171 = load i32*, i32** %13, align 8
  %172 = call i64 @sqlite3_step(i32* %171)
  %173 = load i64, i64* @SQLITE_ROW, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %197

175:                                              ; preds = %170
  %176 = load i32*, i32** %13, align 8
  %177 = call i64 @sqlite3_column_text(i32* %176, i32 3)
  %178 = inttoptr i64 %177 to i8*
  store i8* %178, i8** %16, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @sqlite3_column_int(i32* %179, i32 0)
  store i32 %180, i32* %17, align 4
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @sqlite3_column_int(i32* %181, i32 1)
  store i32 %182, i32* %18, align 4
  %183 = load i8*, i8** %16, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 45
  br i1 %187, label %188, label %191

188:                                              ; preds = %175
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = call i32 @eqp_render(%struct.TYPE_16__* %189)
  br label %191

191:                                              ; preds = %188, %175
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %18, align 4
  %195 = load i8*, i8** %16, align 8
  %196 = call i32 @eqp_append(%struct.TYPE_16__* %192, i32 %193, i32 %194, i8* %195)
  br label %170

197:                                              ; preds = %170
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = call i32 @eqp_render(%struct.TYPE_16__* %198)
  br label %200

200:                                              ; preds = %197, %160
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @sqlite3_finalize(i32* %201)
  %203 = load i8*, i8** %14, align 8
  %204 = call i32 @sqlite3_free(i8* %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AUTOEQP_full, align 8
  %209 = icmp sge i64 %207, %208
  br i1 %209, label %210, label %236

210:                                              ; preds = %200
  %211 = load i8*, i8** @shell_exec.zStmtSql, align 8
  %212 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %211)
  store i8* %212, i8** %14, align 8
  %213 = load i32*, i32** %12, align 8
  %214 = load i8*, i8** %14, align 8
  %215 = call i32 @sqlite3_prepare_v2(i32* %213, i8* %214, i32 -1, i32** %13, i8** null)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* @SQLITE_OK, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %210
  %220 = load i64, i64* @MODE_Explain, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = call i32 @explain_data_prepare(%struct.TYPE_16__* %223, i32* %224)
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = call i32 @exec_prepared_stmt(%struct.TYPE_16__* %226, i32* %227)
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %230 = call i32 @explain_data_delete(%struct.TYPE_16__* %229)
  br label %231

231:                                              ; preds = %219, %210
  %232 = load i32*, i32** %13, align 8
  %233 = call i32 @sqlite3_finalize(i32* %232)
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 @sqlite3_free(i8* %234)
  br label %236

236:                                              ; preds = %231, %200
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @AUTOEQP_trigger, align 8
  %241 = icmp sge i64 %239, %240
  br i1 %241, label %242, label %261

242:                                              ; preds = %236
  %243 = load i32, i32* %15, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %242
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* @SQLITE_DBCONFIG_TRIGGER_EQP, align 4
  %248 = call i32 @sqlite3_db_config(i32* %246, i32 %247, i32 0, i32* null)
  %249 = load i32*, i32** %8, align 8
  %250 = call i32 @sqlite3_finalize(i32* %249)
  %251 = load i32*, i32** %12, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = call i32 @sqlite3_prepare_v2(i32* %251, i8* %252, i32 -1, i32** %8, i8** null)
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %255 = icmp ne %struct.TYPE_16__* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %245
  %257 = load i32*, i32** %8, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 3
  store i32* %257, i32** %259, align 8
  br label %260

260:                                              ; preds = %256, %245
  br label %261

261:                                              ; preds = %260, %242, %236
  %262 = call i32 (...) @restore_debug_trace_modes()
  br label %263

263:                                              ; preds = %261, %142, %137, %134
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %265 = icmp ne %struct.TYPE_16__* %264, null
  br i1 %265, label %266, label %304

266:                                              ; preds = %263
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %266
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 @sqlite3_stmt_isexplain(i32* %277)
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i64, i64* @MODE_Explain, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  store i64 %281, i64* %283, align 8
  br label %284

284:                                              ; preds = %280, %276
  %285 = load i32*, i32** %8, align 8
  %286 = call i32 @sqlite3_stmt_isexplain(i32* %285)
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load i64, i64* @MODE_EQP, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  br label %292

292:                                              ; preds = %288, %284
  br label %293

293:                                              ; preds = %292, %266
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @MODE_Explain, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %293
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %301 = load i32*, i32** %8, align 8
  %302 = call i32 @explain_data_prepare(%struct.TYPE_16__* %300, i32* %301)
  br label %303

303:                                              ; preds = %299, %293
  br label %304

304:                                              ; preds = %303, %263
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %306 = load i32*, i32** %8, align 8
  %307 = call i32 @bind_prepared_stmt(%struct.TYPE_16__* %305, i32* %306)
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %309 = load i32*, i32** %8, align 8
  %310 = call i32 @exec_prepared_stmt(%struct.TYPE_16__* %308, i32* %309)
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %312 = call i32 @explain_data_delete(%struct.TYPE_16__* %311)
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %314 = call i32 @eqp_render(%struct.TYPE_16__* %313)
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %316 = icmp ne %struct.TYPE_16__* %315, null
  br i1 %316, label %317, label %326

317:                                              ; preds = %304
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 5
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load i32*, i32** %12, align 8
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %325 = call i32 @display_stats(i32* %323, %struct.TYPE_16__* %324, i32 0)
  br label %326

326:                                              ; preds = %322, %317, %304
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %328 = icmp ne %struct.TYPE_16__* %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %329
  %335 = load i32*, i32** %12, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %337 = call i32 @display_scanstats(i32* %335, %struct.TYPE_16__* %336)
  br label %338

338:                                              ; preds = %334, %329, %326
  %339 = load i32*, i32** %8, align 8
  %340 = call i32 @sqlite3_finalize(i32* %339)
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* @SQLITE_NOMEM, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %338
  %345 = load i32, i32* %10, align 4
  store i32 %345, i32* %9, align 4
  br label %346

346:                                              ; preds = %344, %338
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* @SQLITE_OK, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %362

350:                                              ; preds = %346
  %351 = load i8*, i8** %11, align 8
  store i8* %351, i8** %6, align 8
  br label %352

352:                                              ; preds = %358, %350
  %353 = load i8*, i8** %6, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 0
  %355 = load i8, i8* %354, align 1
  %356 = call i64 @IsSpace(i8 signext %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %352
  %359 = load i8*, i8** %6, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** %6, align 8
  br label %352

361:                                              ; preds = %352
  br label %370

362:                                              ; preds = %346
  %363 = load i8**, i8*** %7, align 8
  %364 = icmp ne i8** %363, null
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i32*, i32** %12, align 8
  %367 = call i8* @save_err_msg(i32* %366)
  %368 = load i8**, i8*** %7, align 8
  store i8* %367, i8** %368, align 8
  br label %369

369:                                              ; preds = %365, %362
  br label %370

370:                                              ; preds = %369, %361
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %372 = icmp ne %struct.TYPE_16__* %371, null
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 3
  store i32* null, i32** %375, align 8
  br label %376

376:                                              ; preds = %373, %370
  br label %377

377:                                              ; preds = %376, %72
  br label %46

378:                                              ; preds = %56
  %379 = load i32, i32* %9, align 4
  store i32 %379, i32* %4, align 4
  br label %380

380:                                              ; preds = %378, %33
  %381 = load i32, i32* %4, align 4
  ret i32 %381
}

declare dso_local i32 @expertHandleSQL(%struct.TYPE_16__*, i8*, i8**) #1

declare dso_local i32 @expertFinish(%struct.TYPE_16__*, i32, i8**) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i8* @save_err_msg(i32*) #1

declare dso_local i64 @IsSpace(i8 signext) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i64 @ShellHasFlag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_stmt_isexplain(i32*) #1

declare dso_local i32 @disable_debug_trace_modes(...) #1

declare dso_local i32 @sqlite3_db_config(i32*, i32, i32, i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @eqp_render(%struct.TYPE_16__*) #1

declare dso_local i32 @eqp_append(%struct.TYPE_16__*, i32, i32, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @explain_data_prepare(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @exec_prepared_stmt(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @explain_data_delete(%struct.TYPE_16__*) #1

declare dso_local i32 @restore_debug_trace_modes(...) #1

declare dso_local i32 @bind_prepared_stmt(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @display_stats(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @display_scanstats(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
