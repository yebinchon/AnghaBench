; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_svn_client_export5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_svn_client_export5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 (i32, %struct.TYPE_24__*, i32*)*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.edit_baton = type { i8*, i8*, i32, i32 (i32, %struct.TYPE_24__*, i32*)*, i32, i32, i8*, i32, i32*, i8*, i32, i32 }
%struct.export_info_baton = type { i8*, i8*, i8*, i32, i32, i32 (i32, %struct.TYPE_24__*, i32*)*, i32, i8*, i8*, %struct.TYPE_25__* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_file = common dso_local global i64 0, align 8
@ENABLE_EV2_IMPL = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"URL '%s' doesn't exist\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@export_node = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_export5(i32* %0, i8* %1, i8* %2, %struct.TYPE_25__* %3, %struct.TYPE_25__* %4, i8* %5, i8* %6, i8* %7, i32 %8, i8* %9, %struct.TYPE_26__* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_27__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.edit_baton*, align 8
  %33 = alloca %struct.export_info_baton, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i8* %9, i8** %23, align 8
  store %struct.TYPE_26__* %10, %struct.TYPE_26__** %24, align 8
  store i32* %11, i32** %25, align 8
  %42 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %42, i32* %26, align 4
  %43 = load i8*, i8** %15, align 8
  %44 = call i8* @svn_path_is_url(i8* %43)
  store i8* %44, i8** %27, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %46 = icmp ne %struct.TYPE_25__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @SVN_ERR_ASSERT(i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %50 = icmp ne %struct.TYPE_25__* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @SVN_ERR_ASSERT(i32 %51)
  %53 = load i8*, i8** %16, align 8
  %54 = call i8* @svn_path_is_url(i8* %53)
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %12
  %57 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %16, align 8
  %60 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i8* %59)
  store i32* %60, i32** %13, align 8
  br label %382

61:                                               ; preds = %12
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call %struct.TYPE_25__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_25__* %62, i8* %63)
  store %struct.TYPE_25__* %64, %struct.TYPE_25__** %17, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %67 = call %struct.TYPE_25__* @svn_cl__rev_default_to_peg(%struct.TYPE_25__* %65, %struct.TYPE_25__* %66)
  store %struct.TYPE_25__* %67, %struct.TYPE_25__** %18, align 8
  %68 = load i8*, i8** %27, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %61
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %206, label %76

76:                                               ; preds = %70, %61
  %77 = load i32*, i32** %25, align 8
  %78 = call %struct.edit_baton* @apr_pcalloc(i32* %77, i32 80)
  store %struct.edit_baton* %78, %struct.edit_baton** %32, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %81 = load i32*, i32** %25, align 8
  %82 = load i32*, i32** %25, align 8
  %83 = call i32* @svn_client_url_from_path2(i8** %31, i8* %79, %struct.TYPE_26__* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32* %83)
  %85 = load i8*, i8** %15, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = call i32* @svn_client__ra_session_from_path2(i32** %29, %struct.TYPE_27__** %28, i8* %85, i32* null, %struct.TYPE_25__* %86, %struct.TYPE_25__* %87, %struct.TYPE_26__* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32* %90)
  %92 = load i32*, i32** %29, align 8
  %93 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %94 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %93, i32 0, i32 11
  %95 = load i32*, i32** %25, align 8
  %96 = call i32* @svn_ra_get_repos_root2(i32* %92, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32* %96)
  %98 = load i8*, i8** %16, align 8
  %99 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %100 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %105 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %108 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %110 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %109, i32 0, i32 8
  store i32* %26, i32** %110, align 8
  %111 = load i32*, i32** %25, align 8
  %112 = call i32 @apr_hash_make(i32* %111)
  %113 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %114 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load i8*, i8** %23, align 8
  %116 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %117 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %120 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %119, i32 0, i32 6
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %125 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %130 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = load i32 (i32, %struct.TYPE_24__*, i32*)*, i32 (i32, %struct.TYPE_24__*, i32*)** %132, align 8
  %134 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %135 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %134, i32 0, i32 3
  store i32 (i32, %struct.TYPE_24__*, i32*)* %133, i32 (i32, %struct.TYPE_24__*, i32*)** %135, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %140 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32*, i32** %29, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %25, align 8
  %146 = call i32* @svn_ra_check_path(i32* %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %144, i64* %30, i32* %145)
  %147 = call i32 @SVN_ERR(i32* %146)
  %148 = load i64, i64* %30, align 8
  %149 = load i64, i64* @svn_node_file, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %175

151:                                              ; preds = %76
  %152 = load i32, i32* @ENABLE_EV2_IMPL, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = load i8*, i8** %31, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %159 = load i32*, i32** %29, align 8
  %160 = load i8*, i8** %19, align 8
  %161 = load i32*, i32** %25, align 8
  %162 = call i32* @export_file(i8* %155, i8* %156, %struct.edit_baton* %157, %struct.TYPE_27__* %158, i32* %159, i8* %160, i32* %161)
  %163 = call i32 @SVN_ERR(i32* %162)
  br label %174

164:                                              ; preds = %151
  %165 = load i8*, i8** %31, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %169 = load i32*, i32** %29, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = load i32*, i32** %25, align 8
  %172 = call i32* @export_file_ev2(i8* %165, i8* %166, %struct.edit_baton* %167, %struct.TYPE_27__* %168, i32* %169, i8* %170, i32* %171)
  %173 = call i32 @SVN_ERR(i32* %172)
  br label %174

174:                                              ; preds = %164, %154
  br label %205

175:                                              ; preds = %76
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* @svn_node_dir, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i8*, i8** %31, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  %184 = load i32*, i32** %29, align 8
  %185 = load i8*, i8** %19, align 8
  %186 = load i8*, i8** %20, align 8
  %187 = load i8*, i8** %21, align 8
  %188 = load i32, i32* %22, align 4
  %189 = load i8*, i8** %23, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %191 = load i32*, i32** %25, align 8
  %192 = call i32* @export_directory(i8* %180, i8* %181, %struct.edit_baton* %182, %struct.TYPE_27__* %183, i32* %184, i8* %185, i8* %186, i8* %187, i32 %188, i8* %189, %struct.TYPE_26__* %190, i32* %191)
  %193 = call i32 @SVN_ERR(i32* %192)
  br label %204

194:                                              ; preds = %175
  %195 = load i64, i64* %30, align 8
  %196 = load i64, i64* @svn_node_none, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i32, i32* @SVN_ERR_RA_ILLEGAL_URL, align 4
  %200 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i8*, i8** %15, align 8
  %202 = call i32* @svn_error_createf(i32 %199, i32* null, i32 %200, i8* %201)
  store i32* %202, i32** %13, align 8
  br label %382

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %179
  br label %205

205:                                              ; preds = %204, %174
  br label %352

206:                                              ; preds = %70
  store i32* null, i32** %35, align 8
  %207 = load i8*, i8** %15, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = call i32* @svn_dirent_get_absolute(i8** %15, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32* %209)
  %211 = load i8*, i8** %16, align 8
  %212 = load i32*, i32** %25, align 8
  %213 = call i32* @svn_dirent_get_absolute(i8** %16, i8* %211, i32* %212)
  %214 = call i32 @SVN_ERR(i32* %213)
  %215 = load i8*, i8** %15, align 8
  %216 = load i32*, i32** %25, align 8
  %217 = call i32* @svn_io_check_path(i8* %215, i64* %34, i32* %216)
  %218 = call i32 @SVN_ERR(i32* %217)
  %219 = load i64, i64* %34, align 8
  %220 = load i64, i64* @svn_node_file, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %206
  %223 = load i8*, i8** %15, align 8
  %224 = load i32, i32* @FALSE, align 4
  %225 = load i32*, i32** %25, align 8
  %226 = call i32* @append_basename_if_dir(i8** %16, i8* %223, i32 %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32* %226)
  br label %228

228:                                              ; preds = %222, %206
  %229 = load i8*, i8** %16, align 8
  %230 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 0
  store i8* %229, i8** %230, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %232 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 9
  store %struct.TYPE_25__* %231, %struct.TYPE_25__** %232, align 8
  %233 = load i8*, i8** %19, align 8
  %234 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 8
  store i8* %233, i8** %234, align 8
  %235 = load i8*, i8** %21, align 8
  %236 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 7
  store i8* %235, i8** %236, align 8
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 6
  store i32 %239, i32* %240, align 8
  %241 = load i8*, i8** %23, align 8
  %242 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 1
  store i8* %241, i8** %242, align 8
  %243 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %244 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %243, i32 0, i32 1
  %245 = load i32 (i32, %struct.TYPE_24__*, i32*)*, i32 (i32, %struct.TYPE_24__*, i32*)** %244, align 8
  %246 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 5
  store i32 (i32, %struct.TYPE_24__*, i32*)* %245, i32 (i32, %struct.TYPE_24__*, i32*)** %246, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 4
  store i32 %249, i32* %250, align 4
  %251 = load i8*, i8** %15, align 8
  %252 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 2
  store i8* %251, i8** %252, align 8
  %253 = load i32, i32* @FALSE, align 4
  %254 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 3
  store i32 %253, i32* %254, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load i8*, i8** %15, align 8
  %259 = load i32, i32* %22, align 4
  %260 = load i8*, i8** @TRUE, align 8
  %261 = load i8*, i8** @TRUE, align 8
  %262 = load i32, i32* @FALSE, align 4
  %263 = load i32, i32* @export_node, align 4
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %25, align 8
  %271 = call i32* @svn_wc_walk_status(i32 %257, i8* %258, i32 %259, i8* %260, i8* %261, i32 %262, i32* null, i32 %263, %struct.export_info_baton* %33, i32 %266, i32 %269, i32* %270)
  %272 = call i32 @SVN_ERR(i32* %271)
  %273 = getelementptr inbounds %struct.export_info_baton, %struct.export_info_baton* %33, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %228
  %277 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %278 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %279 = load i8*, i8** %15, align 8
  %280 = load i32*, i32** %25, align 8
  %281 = call i8* @svn_dirent_local_style(i8* %279, i32* %280)
  %282 = call i32* @svn_error_createf(i32 %277, i32* null, i32 %278, i8* %281)
  store i32* %282, i32** %13, align 8
  br label %382

283:                                              ; preds = %228
  %284 = load i8*, i8** %20, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %295, label %286

286:                                              ; preds = %283
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i8*, i8** %15, align 8
  %291 = load i32*, i32** %25, align 8
  %292 = load i32*, i32** %25, align 8
  %293 = call i32* @svn_wc__externals_defined_below(i32** %35, i32 %289, i8* %290, i32* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32* %293)
  br label %295

295:                                              ; preds = %286, %283
  %296 = load i32*, i32** %35, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %351

298:                                              ; preds = %295
  %299 = load i32*, i32** %35, align 8
  %300 = call i64 @apr_hash_count(i32* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %351

302:                                              ; preds = %298
  %303 = load i32*, i32** %25, align 8
  %304 = call i32* @svn_pool_create(i32* %303)
  store i32* %304, i32** %36, align 8
  %305 = load i32*, i32** %25, align 8
  %306 = load i32*, i32** %35, align 8
  %307 = call i32* @apr_hash_first(i32* %305, i32* %306)
  store i32* %307, i32** %37, align 8
  br label %308

308:                                              ; preds = %345, %302
  %309 = load i32*, i32** %37, align 8
  %310 = icmp ne i32* %309, null
  br i1 %310, label %311, label %348

311:                                              ; preds = %308
  %312 = load i32*, i32** %37, align 8
  %313 = call i8* @apr_hash_this_key(i32* %312)
  store i8* %313, i8** %38, align 8
  %314 = load i32*, i32** %36, align 8
  %315 = call i32 @svn_pool_clear(i32* %314)
  %316 = load i8*, i8** %15, align 8
  %317 = load i8*, i8** %38, align 8
  %318 = call i8* @svn_dirent_skip_ancestor(i8* %316, i8* %317)
  store i8* %318, i8** %39, align 8
  %319 = load i8*, i8** %16, align 8
  %320 = load i8*, i8** %39, align 8
  %321 = load i32*, i32** %36, align 8
  %322 = call i8* @svn_dirent_join(i8* %319, i8* %320, i32* %321)
  store i8* %322, i8** %40, align 8
  %323 = load i8*, i8** %40, align 8
  %324 = load i32*, i32** %36, align 8
  %325 = call i32 @svn_dirent_dirname(i8* %323, i32* %324)
  %326 = load i32*, i32** %36, align 8
  %327 = call i32* @svn_io_make_dir_recursively(i32 %325, i32* %326)
  %328 = call i32 @SVN_ERR(i32* %327)
  %329 = load i8*, i8** %15, align 8
  %330 = load i8*, i8** %39, align 8
  %331 = load i32*, i32** %36, align 8
  %332 = call i8* @svn_dirent_join(i8* %329, i8* %330, i32* %331)
  %333 = load i8*, i8** %40, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %336 = load i8*, i8** @TRUE, align 8
  %337 = load i8*, i8** %20, align 8
  %338 = load i8*, i8** %21, align 8
  %339 = load i32, i32* %22, align 4
  %340 = load i8*, i8** %23, align 8
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %342 = load i32*, i32** %36, align 8
  %343 = call i32* @svn_client_export5(i32* null, i8* %332, i8* %333, %struct.TYPE_25__* %334, %struct.TYPE_25__* %335, i8* %336, i8* %337, i8* %338, i32 %339, i8* %340, %struct.TYPE_26__* %341, i32* %342)
  %344 = call i32 @SVN_ERR(i32* %343)
  br label %345

345:                                              ; preds = %311
  %346 = load i32*, i32** %37, align 8
  %347 = call i32* @apr_hash_next(i32* %346)
  store i32* %347, i32** %37, align 8
  br label %308

348:                                              ; preds = %308
  %349 = load i32*, i32** %36, align 8
  %350 = call i32 @svn_pool_destroy(i32* %349)
  br label %351

351:                                              ; preds = %348, %298, %295
  br label %352

352:                                              ; preds = %351, %205
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 1
  %355 = load i32 (i32, %struct.TYPE_24__*, i32*)*, i32 (i32, %struct.TYPE_24__*, i32*)** %354, align 8
  %356 = icmp ne i32 (i32, %struct.TYPE_24__*, i32*)* %355, null
  br i1 %356, label %357, label %374

357:                                              ; preds = %352
  %358 = load i8*, i8** %16, align 8
  %359 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %360 = load i32*, i32** %25, align 8
  %361 = call %struct.TYPE_24__* @svn_wc_create_notify(i8* %358, i32 %359, i32* %360)
  store %struct.TYPE_24__* %361, %struct.TYPE_24__** %41, align 8
  %362 = load i32, i32* %26, align 4
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 1
  %367 = load i32 (i32, %struct.TYPE_24__*, i32*)*, i32 (i32, %struct.TYPE_24__*, i32*)** %366, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %369 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %372 = load i32*, i32** %25, align 8
  %373 = call i32 %367(i32 %370, %struct.TYPE_24__* %371, i32* %372)
  br label %374

374:                                              ; preds = %357, %352
  %375 = load i32*, i32** %14, align 8
  %376 = icmp ne i32* %375, null
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load i32, i32* %26, align 4
  %379 = load i32*, i32** %14, align 8
  store i32 %378, i32* %379, align 4
  br label %380

380:                                              ; preds = %377, %374
  %381 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %381, i32** %13, align 8
  br label %382

382:                                              ; preds = %380, %276, %198, %56
  %383 = load i32*, i32** %13, align 8
  ret i32* %383
}

declare dso_local i8* @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_25__* @svn_cl__rev_default_to_head_or_working(%struct.TYPE_25__*, i8*) #1

declare dso_local %struct.TYPE_25__* @svn_cl__rev_default_to_peg(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(i32) #1

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_client_url_from_path2(i8**, i8*, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32* @svn_client__ra_session_from_path2(i32**, %struct.TYPE_27__**, i8*, i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32* @svn_ra_get_repos_root2(i32*, i32*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local i32* @export_file(i8*, i8*, %struct.edit_baton*, %struct.TYPE_27__*, i32*, i8*, i32*) #1

declare dso_local i32* @export_file_ev2(i8*, i8*, %struct.edit_baton*, %struct.TYPE_27__*, i32*, i8*, i32*) #1

declare dso_local i32* @export_directory(i8*, i8*, %struct.edit_baton*, %struct.TYPE_27__*, i32*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @append_basename_if_dir(i8**, i8*, i32, i32*) #1

declare dso_local i32* @svn_wc_walk_status(i32, i8*, i32, i8*, i8*, i32, i32*, i32, %struct.export_info_baton*, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_24__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
