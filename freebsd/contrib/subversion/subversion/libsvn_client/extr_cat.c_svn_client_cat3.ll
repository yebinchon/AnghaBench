; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cat.c_svn_client_cat3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_cat.c_svn_client_cat3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_42__ = type { i32, i32, i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32* }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_FS_NOT_FILE = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_IS_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"URL '%s' refers to a directory\00", align 1
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@svn_subst_eol_style_none = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_41__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_41__* @svn_client_cat3(i32** %0, i32* %1, i8* %2, %struct.TYPE_40__* %3, %struct.TYPE_40__* %4, i64 %5, %struct.TYPE_42__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_41__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca %struct.TYPE_40__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_42__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_43__*, align 8
  %22 = alloca %struct.TYPE_39__*, align 8
  %23 = alloca %struct.TYPE_39__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_41__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_39__*, align 8
  %34 = alloca %struct.TYPE_39__*, align 8
  %35 = alloca %struct.TYPE_39__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.TYPE_40__* %3, %struct.TYPE_40__** %14, align 8
  store %struct.TYPE_40__* %4, %struct.TYPE_40__** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.TYPE_42__* %6, %struct.TYPE_42__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* null, i32** %24, align 8
  %40 = load i32*, i32** %12, align 8
  store i32* %40, i32** %26, align 8
  %41 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %9
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call %struct.TYPE_40__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_40__* %47, i8* %48)
  store %struct.TYPE_40__* %49, %struct.TYPE_40__** %14, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call %struct.TYPE_40__* @svn_cl__rev_default_to_head_or_base(%struct.TYPE_40__* %50, i8* %51)
  store %struct.TYPE_40__* %52, %struct.TYPE_40__** %15, align 8
  br label %57

53:                                               ; preds = %9
  %54 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %55 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %56 = call %struct.TYPE_40__* @svn_cl__rev_default_to_peg(%struct.TYPE_40__* %54, %struct.TYPE_40__* %55)
  store %struct.TYPE_40__* %56, %struct.TYPE_40__** %15, align 8
  br label %57

57:                                               ; preds = %53, %46
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @svn_path_is_url(i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %122, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %61
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %67
  %74 = load i8*, i8** %13, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = call %struct.TYPE_41__* @svn_dirent_get_absolute(i8** %28, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(%struct.TYPE_41__* %76)
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %28, align 8
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call %struct.TYPE_41__* @svn_client__get_normalized_stream(i32** %29, i32 %80, i8* %81, %struct.TYPE_40__* %82, i64 %83, i32 %84, i32 %87, i32 %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(%struct.TYPE_41__* %93)
  %95 = load i32*, i32** %26, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32* @svn_stream_disown(i32* %95, i32* %96)
  store i32* %97, i32** %26, align 8
  %98 = load i32**, i32*** %11, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %73
  %101 = load i32**, i32*** %11, align 8
  %102 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %28, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = call %struct.TYPE_41__* @svn_wc_prop_list2(i32** %101, i32 %104, i8* %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(%struct.TYPE_41__* %108)
  br label %110

110:                                              ; preds = %100, %73
  %111 = load i32*, i32** %29, align 8
  %112 = load i32*, i32** %26, align 8
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = call %struct.TYPE_41__* @svn_stream_copy3(i32* %111, i32* %112, i32 %115, i32 %118, i32* %119)
  %121 = call %struct.TYPE_41__* @svn_error_trace(%struct.TYPE_41__* %120)
  store %struct.TYPE_41__* %121, %struct.TYPE_41__** %10, align 8
  br label %287

122:                                              ; preds = %67, %61, %57
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %17, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = call %struct.TYPE_41__* @svn_client__ra_session_from_path2(i32** %20, %struct.TYPE_43__** %21, i8* %123, i32* null, %struct.TYPE_40__* %124, %struct.TYPE_40__* %125, %struct.TYPE_42__* %126, i32* %127)
  %129 = call i32 @SVN_ERR(%struct.TYPE_41__* %128)
  %130 = load i32*, i32** %20, align 8
  %131 = load i32*, i32** %19, align 8
  %132 = call %struct.TYPE_41__* @svn_ra_get_repos_root2(i32* %130, i8** %25, i32* %131)
  %133 = call i32 @SVN_ERR(%struct.TYPE_41__* %132)
  %134 = load i32*, i32** %20, align 8
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = call %struct.TYPE_41__* @svn_ra_get_file(i32* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %137, i32* null, i32* null, i32** %24, i32* %138)
  store %struct.TYPE_41__* %139, %struct.TYPE_41__** %27, align 8
  %140 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %141 = icmp ne %struct.TYPE_41__* %140, null
  br i1 %141, label %142, label %159

142:                                              ; preds = %122
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SVN_ERR_FS_NOT_FILE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load i32, i32* @SVN_ERR_CLIENT_IS_DIRECTORY, align 4
  %150 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %151 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.TYPE_41__* @svn_error_createf(i32 %149, %struct.TYPE_41__* %150, i32 %151, i32 %154)
  store %struct.TYPE_41__* %155, %struct.TYPE_41__** %10, align 8
  br label %287

156:                                              ; preds = %142
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %27, align 8
  %158 = call %struct.TYPE_41__* @svn_error_trace(%struct.TYPE_41__* %157)
  store %struct.TYPE_41__* %158, %struct.TYPE_41__** %10, align 8
  br label %287

159:                                              ; preds = %122
  %160 = load i32*, i32** %24, align 8
  %161 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %162 = call %struct.TYPE_39__* @svn_hash_gets(i32* %160, i32 %161)
  store %struct.TYPE_39__* %162, %struct.TYPE_39__** %22, align 8
  %163 = load i32*, i32** %24, align 8
  %164 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %165 = call %struct.TYPE_39__* @svn_hash_gets(i32* %163, i32 %164)
  store %struct.TYPE_39__* %165, %struct.TYPE_39__** %23, align 8
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %167 = icmp ne %struct.TYPE_39__* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %159
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %170 = icmp ne %struct.TYPE_39__* %169, null
  br i1 %170, label %171, label %241

171:                                              ; preds = %168, %159
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %173 = icmp ne %struct.TYPE_39__* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %176 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @svn_subst_eol_style_from_value(i32* %30, i8** %31, i32* %177)
  br label %181

179:                                              ; preds = %171
  %180 = load i32, i32* @svn_subst_eol_style_none, align 4
  store i32 %180, i32* %30, align 4
  store i8* null, i8** %31, align 8
  br label %181

181:                                              ; preds = %179, %174
  %182 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %183 = icmp ne %struct.TYPE_39__* %182, null
  br i1 %183, label %184, label %230

184:                                              ; preds = %181
  %185 = load i64, i64* %16, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %184
  store i32 0, i32* %36, align 4
  %188 = load i32*, i32** %24, align 8
  %189 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %190 = call %struct.TYPE_39__* @svn_hash_gets(i32* %188, i32 %189)
  store %struct.TYPE_39__* %190, %struct.TYPE_39__** %33, align 8
  %191 = load i32*, i32** %24, align 8
  %192 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %193 = call %struct.TYPE_39__* @svn_hash_gets(i32* %191, i32 %192)
  store %struct.TYPE_39__* %193, %struct.TYPE_39__** %34, align 8
  %194 = load i32*, i32** %24, align 8
  %195 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %196 = call %struct.TYPE_39__* @svn_hash_gets(i32* %194, i32 %195)
  store %struct.TYPE_39__* %196, %struct.TYPE_39__** %35, align 8
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %34, align 8
  %198 = icmp ne %struct.TYPE_39__* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %187
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %34, align 8
  %201 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32*, i32** %19, align 8
  %204 = call %struct.TYPE_41__* @svn_time_from_cstring(i32* %36, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(%struct.TYPE_41__* %204)
  br label %206

206:                                              ; preds = %199, %187
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %211 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i8*, i8** %25, align 8
  %217 = load i32, i32* %36, align 4
  %218 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  %219 = icmp ne %struct.TYPE_39__* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %206
  %221 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  %222 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  br label %225

224:                                              ; preds = %206
  br label %225

225:                                              ; preds = %224, %220
  %226 = phi i32* [ %223, %220 ], [ null, %224 ]
  %227 = load i32*, i32** %19, align 8
  %228 = call %struct.TYPE_41__* @svn_subst_build_keywords3(i32** %32, i32* %209, i32* %212, i32 %215, i8* %216, i32 %217, i32* %226, i32* %227)
  %229 = call i32 @SVN_ERR(%struct.TYPE_41__* %228)
  br label %231

230:                                              ; preds = %184, %181
  store i32* null, i32** %32, align 8
  br label %231

231:                                              ; preds = %230, %225
  %232 = load i32*, i32** %12, align 8
  %233 = load i32*, i32** %19, align 8
  %234 = call i32* @svn_stream_disown(i32* %232, i32* %233)
  %235 = load i8*, i8** %31, align 8
  %236 = load i32, i32* @FALSE, align 4
  %237 = load i32*, i32** %32, align 8
  %238 = load i32, i32* @TRUE, align 4
  %239 = load i32*, i32** %19, align 8
  %240 = call i32* @svn_subst_stream_translated(i32* %234, i8* %235, i32 %236, i32* %237, i32 %238, i32* %239)
  store i32* %240, i32** %26, align 8
  br label %241

241:                                              ; preds = %231, %168
  %242 = load i32**, i32*** %11, align 8
  %243 = icmp ne i32** %242, null
  br i1 %243, label %244, label %269

244:                                              ; preds = %241
  %245 = load i32*, i32** %19, align 8
  %246 = load i32*, i32** %24, align 8
  %247 = call i32* @apr_hash_first(i32* %245, i32* %246)
  store i32* %247, i32** %37, align 8
  br label %248

248:                                              ; preds = %263, %244
  %249 = load i32*, i32** %37, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i32*, i32** %37, align 8
  %253 = call i32 @apr_hash_this(i32* %252, i8** %38, i32* %39, i32* null)
  %254 = load i8*, i8** %38, align 8
  %255 = call i32 @svn_wc_is_normal_prop(i8* %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %251
  %258 = load i32*, i32** %24, align 8
  %259 = load i8*, i8** %38, align 8
  %260 = load i32, i32* %39, align 4
  %261 = call i32 @apr_hash_set(i32* %258, i8* %259, i32 %260, i32* null)
  br label %262

262:                                              ; preds = %257, %251
  br label %263

263:                                              ; preds = %262
  %264 = load i32*, i32** %37, align 8
  %265 = call i32* @apr_hash_next(i32* %264)
  store i32* %265, i32** %37, align 8
  br label %248

266:                                              ; preds = %248
  %267 = load i32*, i32** %24, align 8
  %268 = load i32**, i32*** %11, align 8
  store i32* %267, i32** %268, align 8
  br label %269

269:                                              ; preds = %266, %241
  %270 = load i32*, i32** %20, align 8
  %271 = load %struct.TYPE_43__*, %struct.TYPE_43__** %21, align 8
  %272 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %26, align 8
  %275 = load i32*, i32** %19, align 8
  %276 = call %struct.TYPE_41__* @svn_ra_get_file(i32* %270, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %273, i32* %274, i32* null, i32** null, i32* %275)
  %277 = call i32 @SVN_ERR(%struct.TYPE_41__* %276)
  %278 = load i32*, i32** %12, align 8
  %279 = load i32*, i32** %26, align 8
  %280 = icmp ne i32* %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %269
  %282 = load i32*, i32** %26, align 8
  %283 = call %struct.TYPE_41__* @svn_stream_close(i32* %282)
  %284 = call i32 @SVN_ERR(%struct.TYPE_41__* %283)
  br label %285

285:                                              ; preds = %281, %269
  %286 = load %struct.TYPE_41__*, %struct.TYPE_41__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_41__* %286, %struct.TYPE_41__** %10, align 8
  br label %287

287:                                              ; preds = %285, %156, %148, %110
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %10, align 8
  ret %struct.TYPE_41__* %288
}

declare dso_local %struct.TYPE_40__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_40__*, i8*) #1

declare dso_local %struct.TYPE_40__* @svn_cl__rev_default_to_head_or_base(%struct.TYPE_40__*, i8*) #1

declare dso_local %struct.TYPE_40__* @svn_cl__rev_default_to_peg(%struct.TYPE_40__*, %struct.TYPE_40__*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i64 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i64) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_41__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_client__get_normalized_stream(i32**, i32, i8*, %struct.TYPE_40__*, i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_disown(i32*, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_error_trace(%struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_41__* @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_client__ra_session_from_path2(i32**, %struct.TYPE_43__**, i8*, i32*, %struct.TYPE_40__*, %struct.TYPE_40__*, %struct.TYPE_42__*, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_error_createf(i32, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_39__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i32*, i8**, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_time_from_cstring(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_41__* @svn_subst_build_keywords3(i32**, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i32*) #1

declare dso_local i32 @svn_wc_is_normal_prop(i8*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local %struct.TYPE_41__* @svn_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
