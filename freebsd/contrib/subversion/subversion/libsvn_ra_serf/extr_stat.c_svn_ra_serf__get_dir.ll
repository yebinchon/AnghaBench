; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__get_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_svn_ra_serf__get_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.get_dir_baton_t = type { i64, i8*, i32*, i32*, i32, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_tristate_unknown = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@get_dir_dirents_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@all_props = common dso_local global i32 0, align 4
@get_dir_props_cb = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i64 0, align 8
@SVN_DIRENT_HAS_PROPS = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't get entries of non-directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__get_dir(%struct.TYPE_13__* %0, i32** %1, i32* %2, i32** %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.get_dir_baton_t, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32** %3, i32*** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %18, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = call i32* @svn_pool_create(i32* %28)
  store i32* %29, i32** %19, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %21, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %24, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 5
  store i32* %31, i32** %32, align 8
  %33 = load i32, i32* @FALSE, align 4
  %34 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i64, i64* @svn_tristate_unknown, align 8
  %36 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %22, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %8
  %44 = load i8*, i8** %22, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = call i8* @svn_path_url_add_component2(i8* %44, i8* %45, i32* %46)
  store i8* %47, i8** %22, align 8
  br label %48

48:                                               ; preds = %43, %8
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @SVN_IS_VALID_REVNUM(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %48
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %19, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = call i32* @svn_ra_serf__get_stable_url(i8** %22, i32* %56, %struct.TYPE_14__* %57, i8* %58, i32 %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32* %62)
  %64 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %55, %52
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @SVN_IS_VALID_REVNUM(i32 %66)
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @SVN_ERR_ASSERT(i32 %70)
  %72 = load i8*, i8** %22, align 8
  %73 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load i32**, i32*** %11, align 8
  %75 = icmp ne i32** %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %65
  %77 = load i32**, i32*** %13, align 8
  %78 = icmp ne i32** %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %81 = load i32, i32* %16, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** %17, align 8
  %85 = call i8* @apr_hash_make(i32* %84)
  %86 = bitcast i8* %85 to i32*
  %87 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 2
  store i32* %86, i32** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = call i32 @get_dirent_props(i32 %91, %struct.TYPE_14__* %92, i32* %93)
  %95 = load i32, i32* @get_dir_dirents_cb, align 4
  %96 = load i32*, i32** %19, align 8
  %97 = call i32* @svn_ra_serf__create_propfind_handler(%struct.TYPE_15__** %20, %struct.TYPE_14__* %88, i8* %89, i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, %struct.get_dir_baton_t* %23, i32* %96)
  %98 = call i32 @SVN_ERR(i32* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %100 = call i32 @svn_ra_serf__request_create(%struct.TYPE_15__* %99)
  br label %103

101:                                              ; preds = %65
  %102 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 2
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %101, %83
  %104 = load i32**, i32*** %13, align 8
  %105 = icmp ne i32** %104, null
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i32*, i32** %17, align 8
  %108 = call i8* @apr_hash_make(i32* %107)
  %109 = bitcast i8* %108 to i32*
  %110 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 3
  store i32* %109, i32** %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %112 = load i8*, i8** %22, align 8
  %113 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %114 = load i32, i32* @all_props, align 4
  %115 = load i32, i32* @get_dir_props_cb, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = call i32* @svn_ra_serf__create_propfind_handler(%struct.TYPE_15__** %21, %struct.TYPE_14__* %111, i8* %112, i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, %struct.get_dir_baton_t* %23, i32* %116)
  %118 = call i32 @SVN_ERR(i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %120 = call i32 @svn_ra_serf__request_create(%struct.TYPE_15__* %119)
  br label %123

121:                                              ; preds = %103
  %122 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 3
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %121, %106
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %125 = icmp ne %struct.TYPE_15__* %124, null
  br i1 %125, label %126, label %176

126:                                              ; preds = %123
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = call i32 @svn_ra_serf__context_run_wait(i32* %128, %struct.TYPE_14__* %129, i32* %130)
  %132 = call i32* @svn_error_trace(i32 %131)
  store i32* %132, i32** %24, align 8
  %133 = load i32*, i32** %24, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32*, i32** %19, align 8
  %137 = call i32 @svn_pool_clear(i32* %136)
  %138 = load i32*, i32** %24, align 8
  store i32* %138, i32** %9, align 8
  br label %240

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @svn_tristate_false, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %139
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @svn_tristate_unknown, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %144
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* @SVN_DIRENT_HAS_PROPS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load i64, i64* @svn_tristate_false, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @apr_hash_clear(i32* %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %163 = load i8*, i8** %22, align 8
  %164 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %167 = load i32*, i32** %19, align 8
  %168 = call i32 @get_dirent_props(i32 %165, %struct.TYPE_14__* %166, i32* %167)
  %169 = load i32, i32* @get_dir_dirents_cb, align 4
  %170 = load i32*, i32** %19, align 8
  %171 = call i32* @svn_ra_serf__create_propfind_handler(%struct.TYPE_15__** %20, %struct.TYPE_14__* %162, i8* %163, i32 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %169, %struct.get_dir_baton_t* %23, i32* %170)
  %172 = call i32 @SVN_ERR(i32* %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %174 = call i32 @svn_ra_serf__request_create(%struct.TYPE_15__* %173)
  br label %175

175:                                              ; preds = %155, %150, %144, %139
  br label %176

176:                                              ; preds = %175, %123
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %178 = icmp ne %struct.TYPE_15__* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %183 = load i32*, i32** %19, align 8
  %184 = call i32 @svn_ra_serf__context_run_wait(i32* %181, %struct.TYPE_14__* %182, i32* %183)
  %185 = call i32* @svn_error_trace(i32 %184)
  store i32* %185, i32** %24, align 8
  br label %186

186:                                              ; preds = %179, %176
  %187 = load i32*, i32** %24, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %191 = icmp ne %struct.TYPE_15__* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %196 = load i32*, i32** %19, align 8
  %197 = call i32 @svn_ra_serf__context_run_wait(i32* %194, %struct.TYPE_14__* %195, i32* %196)
  %198 = call i32* @svn_error_trace(i32 %197)
  store i32* %198, i32** %24, align 8
  br label %199

199:                                              ; preds = %192, %189, %186
  %200 = load i32*, i32** %24, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @svn_tristate_unknown, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %207, %202, %199
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @svn_pool_destroy(i32* %213)
  %215 = load i32*, i32** %24, align 8
  %216 = call i32 @SVN_ERR(i32* %215)
  %217 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %212
  %221 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %222 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %223 = call i32* @svn_error_create(i32 %221, i32* null, i32 %222)
  store i32* %223, i32** %9, align 8
  br label %240

224:                                              ; preds = %212
  %225 = load i32**, i32*** %13, align 8
  %226 = icmp ne i32** %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i32**, i32*** %13, align 8
  store i32* %229, i32** %230, align 8
  br label %231

231:                                              ; preds = %227, %224
  %232 = load i32**, i32*** %11, align 8
  %233 = icmp ne i32** %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %23, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32**, i32*** %11, align 8
  store i32* %236, i32** %237, align 8
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %239, i32** %9, align 8
  br label %240

240:                                              ; preds = %238, %220, %135
  %241 = load i32*, i32** %9, align 8
  ret i32* %241
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_serf__get_stable_url(i8**, i32*, %struct.TYPE_14__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_ra_serf__create_propfind_handler(%struct.TYPE_15__**, %struct.TYPE_14__*, i8*, i32, i8*, i32, i32, %struct.get_dir_baton_t*, i32*) #1

declare dso_local i32 @get_dirent_props(i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_ra_serf__request_create(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__context_run_wait(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
