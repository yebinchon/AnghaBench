; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_find_repos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_find_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i32, i32, i64, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_BAD_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Non-svn URL passed to svn server: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't determine repository path\00", align 1
@SVN_ERR_RA_SVN_REPOS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"No repository found in '%s'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FALSE = common dso_local global i64 0, align 8
@SVN_CONFIG_SECTION_SASL = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_USE_SASL = common dso_local global i8* null, align 8
@SVN_ERR_BAD_CONFIG_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [96 x i8] c"SASL requested but not compiled in; set '%s' to 'false' or recompile svnserve with SASL support\00", align 1
@SVN_CONFIG_SECTION_GENERAL = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_REALM = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_HOOKS_ENV = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_CONFIG_OPTION_MAX_SSF = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_MIN_SSF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64, i64, i32*, %struct.TYPE_11__*, i32*, i32*, i32*, i32*)* @find_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_repos(i8* %0, i8* %1, i64 %2, i64 %3, i32* %4, %struct.TYPE_11__* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i64, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i32* %4, i32** %16, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @skip_scheme_part(i8* %28)
  store i8* %29, i8** %22, align 8
  %30 = load i8*, i8** %22, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %10
  %33 = load i32, i32* @SVN_ERR_BAD_URL, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32* @svn_error_createf(i32 %33, i32* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32* %35, i32** %11, align 8
  br label %284

36:                                               ; preds = %10
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %22, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 47)
  store i8* %41, i8** %22, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i8*, i8** %22, align 8
  %48 = load i32*, i32** %21, align 8
  %49 = call i8* @svn_relpath_canonicalize(i8* %47, i32* %48)
  store i8* %49, i8** %22, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i8* @svn_path_uri_decode(i8* %50, i32* %51)
  store i8* %52, i8** %22, align 8
  %53 = load i8*, i8** %22, align 8
  %54 = call i32 @repos_path_valid(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %58 = call i32* @svn_error_create(i32 %57, i32* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32* %58, i32** %11, align 8
  br label %284

59:                                               ; preds = %46
  %60 = load i8*, i8** %13, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i32 @svn_dirent_canonicalize(i8* %60, i32* %61)
  %63 = load i8*, i8** %22, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = call i8* @svn_dirent_join(i32 %62, i8* %63, i32* %64)
  store i8* %65, i8** %23, align 8
  %66 = load i8*, i8** %23, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @svn_repos_find_root_path(i8* %66, i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %59
  %76 = load i32, i32* @SVN_ERR_RA_SVN_REPOS_NOT_FOUND, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = call i32* @svn_error_createf(i32 %76, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  store i32* %78, i32** %11, align 8
  br label %284

79:                                               ; preds = %59
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = load i32*, i32** %20, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = call i32 @svn_repos_open3(i32* %81, i32 %84, i32* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @svn_repos_remember_client_capabilities(i32 %92, i32 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @svn_repos_fs(i32 %100)
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @strlen(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  store i8* %110, i8** %24, align 8
  %111 = load i8*, i8** %24, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %79
  %116 = load i8*, i8** %24, align 8
  br label %118

117:                                              ; preds = %79
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i8* [ %116, %115 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %117 ]
  %120 = load i32*, i32** %20, align 8
  %121 = call i8* @svn_stringbuf_create(i8* %119, i32* %120)
  %122 = bitcast i8* %121 to %struct.TYPE_9__*
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 12
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %124, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = load i32*, i32** %20, align 8
  %127 = call i8* @svn_stringbuf_create(i8* %125, i32* %126)
  %128 = bitcast i8* %127 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %26, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 12
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @svn_path_component_count(i32 %134)
  %136 = call i32 @svn_path_remove_components(%struct.TYPE_10__* %129, i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 11
  store i32 %139, i32* %141, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 8
  %146 = load i32*, i32** %20, align 8
  %147 = call i32* @svn_dirent_is_child(i8* %142, i32 %145, i32* %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 10
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 10
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %118
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %20, align 8
  %159 = call i32* @svn_dirent_basename(i32 %157, i32* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 9
  store i32* %159, i32** %161, align 8
  br label %168

162:                                              ; preds = %118
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 10
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 9
  store i32* %165, i32** %167, align 8
  br label %168

168:                                              ; preds = %162, %154
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 9
  %171 = load i32*, i32** %170, align 8
  %172 = load i32*, i32** %20, align 8
  %173 = call i32* @svn_path_uri_encode(i32* %171, i32* %172)
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 9
  store i32* %173, i32** %175, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = icmp eq i32* null, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %168
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = call i32 @svn_repos_conf_dir(i32 %181, i32* %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 8
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %18, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %20, align 8
  %191 = call i32 @svn_repos_svnserve_conf(i32 %189, i32* %190)
  %192 = load i64, i64* @FALSE, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32*, i32** %20, align 8
  %197 = call i32 @svn_repos__config_pool_get(i32** %16, i32* %186, i32 %191, i64 %192, i32 %195, i32* %196)
  %198 = call i32 @SVN_ERR(i32 %197)
  br label %199

199:                                              ; preds = %178, %168
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %201 = load i32*, i32** %16, align 8
  %202 = load i32*, i32** %18, align 8
  %203 = load i32*, i32** %20, align 8
  %204 = call i32 @load_pwdb_config(%struct.TYPE_11__* %200, i32* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = load i32*, i32** %20, align 8
  %212 = call i32 @load_authz_config(%struct.TYPE_11__* %206, i32 %209, i32* %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* @SVN_CONFIG_SECTION_SASL, align 4
  %216 = load i8*, i8** @SVN_CONFIG_OPTION_USE_SASL, align 8
  %217 = load i64, i64* @FALSE, align 8
  %218 = call i32 @svn_config_get_bool(i32* %214, i64* %27, i32 %215, i8* %216, i64 %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i64, i64* %27, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %199
  %223 = load i32, i32* @SVN_ERR_BAD_CONFIG_VALUE, align 4
  %224 = call i8* @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0))
  %225 = load i8*, i8** @SVN_CONFIG_OPTION_USE_SASL, align 8
  %226 = call i32* @svn_error_createf(i32 %223, i32* null, i8* %224, i8* %225)
  store i32* %226, i32** %11, align 8
  br label %284

227:                                              ; preds = %199
  %228 = load i64, i64* @FALSE, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 4
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %227
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @svn_fs_get_uuid(i32 %234, i8** %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load i32*, i32** %16, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* @SVN_CONFIG_SECTION_GENERAL, align 4
  %244 = load i32, i32* @SVN_CONFIG_OPTION_REALM, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @svn_config_get(i32* %240, i8** %242, i32 %243, i32 %244, i8* %247)
  %249 = load i32*, i32** %20, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @apr_pstrdup(i32* %249, i8* %252)
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %257 = load i32*, i32** %16, align 8
  %258 = load i64, i64* %15, align 8
  %259 = call i32 @set_access(%struct.TYPE_11__* %256, i32* %257, i64 %258)
  %260 = load i32*, i32** %16, align 8
  %261 = load i32, i32* @SVN_CONFIG_SECTION_GENERAL, align 4
  %262 = load i32, i32* @SVN_CONFIG_OPTION_HOOKS_ENV, align 4
  %263 = call i32 @svn_config_get(i32* %260, i8** %25, i32 %261, i32 %262, i8* null)
  %264 = load i8*, i8** %25, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %231
  %267 = load i8*, i8** %25, align 8
  %268 = load i32*, i32** %21, align 8
  %269 = call i8* @svn_dirent_internal_style(i8* %267, i32* %268)
  store i8* %269, i8** %25, align 8
  br label %270

270:                                              ; preds = %266, %231
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i8*, i8** %25, align 8
  %275 = load i32*, i32** %21, align 8
  %276 = call i32 @svn_repos_hooks_setenv(i32 %273, i8* %274, i32* %275)
  %277 = call i32 @SVN_ERR(i32 %276)
  %278 = load i32*, i32** %20, align 8
  %279 = load i8*, i8** %25, align 8
  %280 = call i8* @apr_pstrdup(i32* %278, i8* %279)
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  store i8* %280, i8** %282, align 8
  %283 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %283, i32** %11, align 8
  br label %284

284:                                              ; preds = %270, %222, %75, %56, %32
  %285 = load i32*, i32** %11, align 8
  ret i32* %285
}

declare dso_local i8* @skip_scheme_part(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i8* @svn_path_uri_decode(i8*, i32*) #1

declare dso_local i32 @repos_path_valid(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_canonicalize(i8*, i32*) #1

declare dso_local i32 @svn_repos_find_root_path(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_open3(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_repos_remember_client_capabilities(i32, i32) #1

declare dso_local i32 @svn_repos_fs(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_path_remove_components(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @svn_path_component_count(i32) #1

declare dso_local i32* @svn_dirent_is_child(i8*, i32, i32*) #1

declare dso_local i32* @svn_dirent_basename(i32, i32*) #1

declare dso_local i32* @svn_path_uri_encode(i32*, i32*) #1

declare dso_local i32 @svn_repos_conf_dir(i32, i32*) #1

declare dso_local i32 @svn_repos__config_pool_get(i32**, i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @svn_repos_svnserve_conf(i32, i32*) #1

declare dso_local i32 @load_pwdb_config(%struct.TYPE_11__*, i32*, i32*, i32*) #1

declare dso_local i32 @load_authz_config(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_config_get_bool(i32*, i64*, i32, i8*, i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_fs_get_uuid(i32, i8**, i32*) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @set_access(%struct.TYPE_11__*, i32*, i64) #1

declare dso_local i8* @svn_dirent_internal_style(i8*, i32*) #1

declare dso_local i32 @svn_repos_hooks_setenv(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
