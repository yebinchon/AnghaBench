; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__locks_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__locks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_33__*, i32, i32**, i32)* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_37__ = type { i64, i32, i32 }

@SVN_ERR_FS_LOCK_EXPIRED = common dso_local global i64 0, align 8
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_LOCK = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_35__* null, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"lock-tokens\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"creating cursor for reading lock tokens\00", align 1
@DB_DBT_MALLOC = common dso_local global i32 0, align 4
@DB_SET_RANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@DB_NEXT = common dso_local global i32 0, align 4
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"fetching lock tokens\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"fetching lock tokens (closing cursor)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_35__* @svn_fs_bdb__locks_get(%struct.TYPE_34__* %0, i8* %1, i64 %2, %struct.TYPE_35__* (i8*, i32*, i32*)* %3, i8* %4, %struct.TYPE_32__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_35__* (i8*, i32*, i32*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_36__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_37__, align 8
  %19 = alloca %struct.TYPE_37__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_35__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_35__* (i8*, i32*, i32*)* %3, %struct.TYPE_35__* (i8*, i32*, i32*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_32__* %5, %struct.TYPE_32__** %14, align 8
  store i32* %6, i32** %15, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %31, align 8
  store %struct.TYPE_36__* %32, %struct.TYPE_36__** %16, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i32* @svn_pool_create(i32* %33)
  store i32* %34, i32** %22, align 8
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %26, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call %struct.TYPE_35__* @svn_fs_bdb__lock_token_get(i8** %23, %struct.TYPE_34__* %36, i8* %37, %struct.TYPE_32__* %38, i32* %39)
  store %struct.TYPE_35__* %40, %struct.TYPE_35__** %25, align 8
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %42 = icmp ne %struct.TYPE_35__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %7
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SVN_ERR_FS_NO_SUCH_LOCK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %49, %43
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %63 = call i32 @svn_error_clear(%struct.TYPE_35__* %62)
  br label %93

64:                                               ; preds = %55, %7
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %66 = icmp ne %struct.TYPE_35__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %69 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %68)
  store %struct.TYPE_35__* %69, %struct.TYPE_35__** %8, align 8
  br label %266

70:                                               ; preds = %64
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %23, align 8
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call %struct.TYPE_35__* @get_lock(i32** %24, %struct.TYPE_34__* %71, i8* %72, i8* %73, %struct.TYPE_32__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(%struct.TYPE_35__* %76)
  %78 = load i32*, i32** %24, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load %struct.TYPE_35__* (i8*, i32*, i32*)*, %struct.TYPE_35__* (i8*, i32*, i32*)** %12, align 8
  %82 = icmp ne %struct.TYPE_35__* (i8*, i32*, i32*)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.TYPE_35__* (i8*, i32*, i32*)*, %struct.TYPE_35__* (i8*, i32*, i32*)** %12, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32*, i32** %24, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call %struct.TYPE_35__* %84(i8* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(%struct.TYPE_35__* %88)
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %90, %struct.TYPE_35__** %8, align 8
  br label %266

91:                                               ; preds = %80, %70
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @svn_depth_empty, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %98, %struct.TYPE_35__** %8, align 8
  br label %266

99:                                               ; preds = %93
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %101 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_32__* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_33__*, i32, i32**, i32)*, i32 (%struct.TYPE_33__*, i32, i32**, i32)** %105, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %108, align 8
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 %106(%struct.TYPE_33__* %109, i32 %112, i32** %17, i32 0)
  store i32 %113, i32* %20, align 4
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %115 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* %20, align 4
  %117 = call %struct.TYPE_35__* @BDB_WRAP(%struct.TYPE_34__* %114, i32 %115, i32 %116)
  %118 = call i32 @SVN_ERR(%struct.TYPE_35__* %117)
  %119 = load i8*, i8** %26, align 8
  %120 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_37__* %18, i8* %119)
  %121 = load i32, i32* @DB_DBT_MALLOC, align 4
  %122 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  %125 = load i32*, i32** %17, align 8
  %126 = call %struct.TYPE_37__* @svn_fs_base__result_dbt(%struct.TYPE_37__* %19)
  %127 = load i32, i32* @DB_SET_RANGE, align 4
  %128 = call i32 @svn_bdb_dbc_get(i32* %125, %struct.TYPE_37__* %18, %struct.TYPE_37__* %126, i32 %127)
  store i32 %128, i32* %20, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = call i32 @svn_fspath__is_root(i8* %129, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %99
  %135 = load i32*, i32** %15, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* @SVN_VA_NULL, align 4
  %138 = call i8* @apr_pstrcat(i32* %135, i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  store i8* %138, i8** %26, align 8
  br label %139

139:                                              ; preds = %134, %99
  %140 = load i8*, i8** %26, align 8
  %141 = call i64 @strlen(i8* %140)
  store i64 %141, i64* %27, align 8
  br label %142

142:                                              ; preds = %232, %139
  %143 = load i32, i32* %20, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %27, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i8*, i8** %26, align 8
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %27, align 8
  %155 = call i64 @strncmp(i8* %151, i32 %153, i64 %154)
  %156 = icmp eq i64 %155, 0
  br label %157

157:                                              ; preds = %150, %145, %142
  %158 = phi i1 [ false, %145 ], [ false, %142 ], [ %156, %150 ]
  br i1 %158, label %159, label %238

159:                                              ; preds = %157
  %160 = load i32*, i32** %22, align 8
  %161 = call i32 @svn_pool_clear(i32* %160)
  %162 = load i32*, i32** %22, align 8
  %163 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_37__* %18, i32* %162)
  %164 = load i32*, i32** %22, align 8
  %165 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_37__* %19, i32* %164)
  %166 = load i32*, i32** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i8* @apr_pstrmemdup(i32* %166, i32 %168, i64 %170)
  store i8* %171, i8** %28, align 8
  %172 = load i32*, i32** %22, align 8
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @apr_pstrmemdup(i32* %172, i32 %174, i64 %176)
  store i8* %177, i8** %23, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @svn_depth_files, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %159
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* @svn_depth_immediates, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181, %159
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %28, align 8
  %188 = call i8* @svn_fspath__skip_ancestor(i8* %186, i8* %187)
  store i8* %188, i8** %29, align 8
  %189 = load i8*, i8** %29, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i8*, i8** %29, align 8
  %193 = call i32 @svn_path_component_count(i8* %192)
  %194 = icmp ne i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %185
  br label %232

196:                                              ; preds = %191
  br label %197

197:                                              ; preds = %196, %181
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %199 = load i8*, i8** %28, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = call %struct.TYPE_35__* @get_lock(i32** %24, %struct.TYPE_34__* %198, i8* %199, i8* %200, %struct.TYPE_32__* %201, i32* %202)
  store %struct.TYPE_35__* %203, %struct.TYPE_35__** %25, align 8
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %205 = icmp ne %struct.TYPE_35__* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load i32*, i32** %17, align 8
  %208 = call i32 @svn_bdb_dbc_close(i32* %207)
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %210 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %209)
  store %struct.TYPE_35__* %210, %struct.TYPE_35__** %8, align 8
  br label %266

211:                                              ; preds = %197
  %212 = load i32*, i32** %24, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load %struct.TYPE_35__* (i8*, i32*, i32*)*, %struct.TYPE_35__* (i8*, i32*, i32*)** %12, align 8
  %216 = icmp ne %struct.TYPE_35__* (i8*, i32*, i32*)* %215, null
  br i1 %216, label %217, label %231

217:                                              ; preds = %214
  %218 = load %struct.TYPE_35__* (i8*, i32*, i32*)*, %struct.TYPE_35__* (i8*, i32*, i32*)** %12, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = load i32*, i32** %24, align 8
  %221 = load i32*, i32** %22, align 8
  %222 = call %struct.TYPE_35__* %218(i8* %219, i32* %220, i32* %221)
  store %struct.TYPE_35__* %222, %struct.TYPE_35__** %25, align 8
  %223 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %224 = icmp ne %struct.TYPE_35__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = load i32*, i32** %17, align 8
  %227 = call i32 @svn_bdb_dbc_close(i32* %226)
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %25, align 8
  %229 = call %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__* %228)
  store %struct.TYPE_35__* %229, %struct.TYPE_35__** %8, align 8
  br label %266

230:                                              ; preds = %217
  br label %231

231:                                              ; preds = %230, %214, %211
  br label %232

232:                                              ; preds = %231, %195
  %233 = call %struct.TYPE_37__* @svn_fs_base__result_dbt(%struct.TYPE_37__* %18)
  %234 = call %struct.TYPE_37__* @svn_fs_base__result_dbt(%struct.TYPE_37__* %19)
  %235 = load i32*, i32** %17, align 8
  %236 = load i32, i32* @DB_NEXT, align 4
  %237 = call i32 @svn_bdb_dbc_get(i32* %235, %struct.TYPE_37__* %18, %struct.TYPE_37__* %19, i32 %236)
  store i32 %237, i32* %20, align 4
  br label %142

238:                                              ; preds = %157
  %239 = load i32*, i32** %22, align 8
  %240 = call i32 @svn_pool_destroy(i32* %239)
  %241 = load i32*, i32** %17, align 8
  %242 = call i32 @svn_bdb_dbc_close(i32* %241)
  store i32 %242, i32* %21, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %238
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* @DB_NOTFOUND, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %251 = call i32 @N_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %252 = load i32, i32* %20, align 4
  %253 = call %struct.TYPE_35__* @BDB_WRAP(%struct.TYPE_34__* %250, i32 %251, i32 %252)
  %254 = call i32 @SVN_ERR(%struct.TYPE_35__* %253)
  br label %255

255:                                              ; preds = %249, %245, %238
  %256 = load i32, i32* %21, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %260 = call i32 @N_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %261 = load i32, i32* %21, align 4
  %262 = call %struct.TYPE_35__* @BDB_WRAP(%struct.TYPE_34__* %259, i32 %260, i32 %261)
  %263 = call i32 @SVN_ERR(%struct.TYPE_35__* %262)
  br label %264

264:                                              ; preds = %258, %255
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_35__* %265, %struct.TYPE_35__** %8, align 8
  br label %266

266:                                              ; preds = %264, %225, %206, %97, %83, %67
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  ret %struct.TYPE_35__* %267
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_35__* @svn_fs_bdb__lock_token_get(i8**, %struct.TYPE_34__*, i8*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @svn_error_trace(%struct.TYPE_35__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_35__* @get_lock(i32**, %struct.TYPE_34__*, i8*, i8*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_32__*, i8*, i8*) #1

declare dso_local %struct.TYPE_35__* @BDB_WRAP(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @svn_bdb_dbc_get(i32*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32) #1

declare dso_local %struct.TYPE_37__* @svn_fs_base__result_dbt(%struct.TYPE_37__*) #1

declare dso_local i32 @svn_fspath__is_root(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_37__*, i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i64) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_path_component_count(i8*) #1

declare dso_local i32 @svn_bdb_dbc_close(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
