; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_svn_client_status6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_status.c_svn_client_status6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_49__ = type { i64 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i32 (i32, %struct.TYPE_47__*, i32*)*, i32 }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_53__ = type { i64 }
%struct.status_baton = type { i8*, i8*, i8*, i32, i32*, i8*, i32 }
%struct.TYPE_50__ = type { %struct.TYPE_49__* (i8*, i32*)* }
%struct.TYPE_52__ = type { i64, i32*, %struct.TYPE_51__*, i8*, i32, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_file = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"'%s' is not a working copy\00", align 1
@SVN_ERR_ENTRY_MISSING_URL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Entry '%s' has no URL\00", align 1
@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@tweak_status = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_opt_revision_head = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@lock_fetch_reporter = common dso_local global i32 0, align 4
@svn_wc_notify_status_completed = common dso_local global i32 0, align 4
@SVN_ERR_WC_MISSING = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_49__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_49__* @svn_client_status6(i32* %0, %struct.TYPE_51__* %1, i8* %2, %struct.TYPE_48__* %3, i64 %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, %struct.TYPE_53__* %11, i32 %12, i8* %13, i32* %14) #0 {
  %16 = alloca %struct.TYPE_49__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_51__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_48__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_53__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.status_baton, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_53__*, align 8
  %38 = alloca %struct.TYPE_49__*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i8*, align 8
  %45 = alloca %struct.TYPE_50__*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i8*, align 8
  %50 = alloca i32, align 4
  %51 = alloca %struct.TYPE_52__, align 8
  %52 = alloca i64, align 8
  %53 = alloca %struct.TYPE_47__*, align 8
  %54 = alloca i32*, align 8
  store i32* %0, i32** %17, align 8
  store %struct.TYPE_51__* %1, %struct.TYPE_51__** %18, align 8
  store i8* %2, i8** %19, align 8
  store %struct.TYPE_48__* %3, %struct.TYPE_48__** %20, align 8
  store i64 %4, i64* %21, align 8
  store i8* %5, i8** %22, align 8
  store i8* %6, i8** %23, align 8
  store i8* %7, i8** %24, align 8
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i8* %10, i8** %27, align 8
  store %struct.TYPE_53__* %11, %struct.TYPE_53__** %28, align 8
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* null, i32** %39, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %15
  %58 = load i8*, i8** @TRUE, align 8
  store i8* %58, i8** %24, align 8
  br label %59

59:                                               ; preds = %57, %15
  %60 = load i8*, i8** %19, align 8
  %61 = call i64 @svn_path_is_url(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %65 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** %19, align 8
  %67 = call %struct.TYPE_49__* @svn_error_createf(i32 %64, i32* null, i32 %65, i8* %66)
  store %struct.TYPE_49__* %67, %struct.TYPE_49__** %16, align 8
  br label %463

68:                                               ; preds = %59
  %69 = load %struct.TYPE_53__*, %struct.TYPE_53__** %28, align 8
  %70 = icmp ne %struct.TYPE_53__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.TYPE_53__*, %struct.TYPE_53__** %28, align 8
  %73 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_53__*, %struct.TYPE_53__** %28, align 8
  %78 = load i32*, i32** %31, align 8
  %79 = call %struct.TYPE_49__* @svn_hash_from_cstring_keys(i32** %39, %struct.TYPE_53__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(%struct.TYPE_49__* %79)
  br label %81

81:                                               ; preds = %76, %71, %68
  %82 = load i32*, i32** %17, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %86 = load i32*, i32** %17, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %29, align 4
  %89 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 6
  store i32 %88, i32* %89, align 8
  %90 = load i8*, i8** %30, align 8
  %91 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** @FALSE, align 8
  %93 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 2
  store i8* %92, i8** %93, align 8
  %94 = load i32*, i32** %39, align 8
  %95 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 4
  store i32* %94, i32** %95, align 8
  %96 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 3
  store i32 %98, i32* %99, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i32*, i32** %31, align 8
  %102 = call %struct.TYPE_49__* @svn_dirent_get_absolute(i8** %35, i8* %100, i32* %101)
  %103 = call i32 @SVN_ERR(%struct.TYPE_49__* %102)
  %104 = load i8*, i8** %23, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %168

106:                                              ; preds = %87
  %107 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %35, align 8
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load i8*, i8** @FALSE, align 8
  %113 = load i32*, i32** %31, align 8
  %114 = call %struct.TYPE_49__* @svn_wc_read_kind2(i64* %40, i32 %109, i8* %110, i8* %111, i8* %112, i32* %113)
  %115 = call i32 @SVN_ERR(%struct.TYPE_49__* %114)
  %116 = load i64, i64* %40, align 8
  %117 = load i64, i64* @svn_node_dir, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i8*, i8** %35, align 8
  store i8* %120, i8** %34, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %36, align 8
  %121 = load i8*, i8** %19, align 8
  store i8* %121, i8** %33, align 8
  br label %167

122:                                              ; preds = %106
  %123 = load i8*, i8** %35, align 8
  %124 = load i32*, i32** %31, align 8
  %125 = call i8* @svn_dirent_dirname(i8* %123, i32* %124)
  store i8* %125, i8** %34, align 8
  %126 = load i8*, i8** %35, align 8
  %127 = call i8* @svn_dirent_basename(i8* %126, i32* null)
  store i8* %127, i8** %36, align 8
  %128 = load i8*, i8** %19, align 8
  %129 = load i32*, i32** %31, align 8
  %130 = call i8* @svn_dirent_dirname(i8* %128, i32* %129)
  store i8* %130, i8** %33, align 8
  %131 = load i64, i64* %40, align 8
  %132 = load i64, i64* @svn_node_file, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %122
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* @svn_depth_empty, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* @svn_depth_files, align 8
  store i64 %139, i64* %21, align 8
  br label %140

140:                                              ; preds = %138, %134
  br label %166

141:                                              ; preds = %122
  %142 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i8*, i8** %34, align 8
  %146 = load i8*, i8** @FALSE, align 8
  %147 = load i8*, i8** @FALSE, align 8
  %148 = load i32*, i32** %31, align 8
  %149 = call %struct.TYPE_49__* @svn_wc_read_kind2(i64* %40, i32 %144, i8* %145, i8* %146, i8* %147, i32* %148)
  store %struct.TYPE_49__* %149, %struct.TYPE_49__** %38, align 8
  %150 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %151 = call i32 @svn_error_clear(%struct.TYPE_49__* %150)
  %152 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %153 = icmp ne %struct.TYPE_49__* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %141
  %155 = load i64, i64* %40, align 8
  %156 = load i64, i64* @svn_node_dir, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154, %141
  %159 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %160 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i8*, i8** %19, align 8
  %162 = load i32*, i32** %31, align 8
  %163 = call i8* @svn_dirent_local_style(i8* %161, i32* %162)
  %164 = call %struct.TYPE_49__* @svn_error_createf(i32 %159, i32* null, i32 %160, i8* %163)
  store %struct.TYPE_49__* %164, %struct.TYPE_49__** %16, align 8
  br label %463

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %140
  br label %167

167:                                              ; preds = %166, %119
  br label %171

168:                                              ; preds = %87
  %169 = load i8*, i8** %19, align 8
  store i8* %169, i8** %33, align 8
  %170 = load i8*, i8** %35, align 8
  store i8* %170, i8** %34, align 8
  br label %171

171:                                              ; preds = %168, %167
  %172 = load i8*, i8** %33, align 8
  %173 = call i64 @svn_dirent_is_absolute(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 0
  store i8* null, i8** %176, align 8
  %177 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 1
  store i8* null, i8** %177, align 8
  br label %183

178:                                              ; preds = %171
  %179 = load i8*, i8** %34, align 8
  %180 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 0
  store i8* %179, i8** %180, align 8
  %181 = load i8*, i8** %33, align 8
  %182 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 1
  store i8* %181, i8** %182, align 8
  br label %183

183:                                              ; preds = %178, %175
  %184 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %31, align 8
  %188 = call %struct.TYPE_49__* @svn_wc_get_default_ignores(%struct.TYPE_53__** %37, i32 %186, i32* %187)
  %189 = call i32 @SVN_ERR(%struct.TYPE_49__* %188)
  %190 = load i8*, i8** %23, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %389

192:                                              ; preds = %183
  %193 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %193, i32* %48, align 4
  %194 = load i8*, i8** %34, align 8
  %195 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %196 = load i32*, i32** %31, align 8
  %197 = load i32*, i32** %31, align 8
  %198 = call %struct.TYPE_49__* @svn_client_url_from_path2(i8** %42, i8* %194, %struct.TYPE_51__* %195, i32* %196, i32* %197)
  %199 = call i32 @SVN_ERR(%struct.TYPE_49__* %198)
  %200 = load i8*, i8** %42, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %192
  %203 = load i32, i32* @SVN_ERR_ENTRY_MISSING_URL, align 4
  %204 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %205 = load i8*, i8** %33, align 8
  %206 = load i32*, i32** %31, align 8
  %207 = call i8* @svn_dirent_local_style(i8* %205, i32* %206)
  %208 = call %struct.TYPE_49__* @svn_error_createf(i32 %203, i32* null, i32 %204, i8* %207)
  store %struct.TYPE_49__* %208, %struct.TYPE_49__** %16, align 8
  br label %463

209:                                              ; preds = %192
  %210 = load i8*, i8** %42, align 8
  %211 = load i8*, i8** %34, align 8
  %212 = load i8*, i8** @FALSE, align 8
  %213 = load i8*, i8** @TRUE, align 8
  %214 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %215 = load i32*, i32** %31, align 8
  %216 = load i32*, i32** %31, align 8
  %217 = call %struct.TYPE_49__* @svn_client__open_ra_session_internal(i32** %41, i32* null, i8* %210, i8* %211, i32* null, i8* %212, i8* %213, %struct.TYPE_51__* %214, i32* %215, i32* %216)
  %218 = call i32 @SVN_ERR(%struct.TYPE_49__* %217)
  %219 = load i32*, i32** %41, align 8
  %220 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %221 = load i32*, i32** %31, align 8
  %222 = call %struct.TYPE_49__* @svn_ra_has_capability(i32* %219, i8** %44, i32 %220, i32* %221)
  %223 = call i32 @SVN_ERR(%struct.TYPE_49__* %222)
  %224 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i8*, i8** %34, align 8
  %228 = load i8*, i8** %36, align 8
  %229 = load i64, i64* %21, align 8
  %230 = load i8*, i8** %22, align 8
  %231 = load i8*, i8** %24, align 8
  %232 = load i8*, i8** %25, align 8
  %233 = load i8*, i8** %27, align 8
  %234 = load i8*, i8** %44, align 8
  %235 = load %struct.TYPE_53__*, %struct.TYPE_53__** %37, align 8
  %236 = load i32, i32* @tweak_status, align 4
  %237 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %31, align 8
  %244 = load i32*, i32** %31, align 8
  %245 = call %struct.TYPE_49__* @svn_wc__get_status_editor(%struct.TYPE_50__** %45, i8** %46, i8** %47, i32* %48, i32 %226, i8* %227, i8* %228, i64 %229, i8* %230, i8* %231, i8* %232, i8* %233, i8* %234, %struct.TYPE_53__* %235, i32 %236, %struct.status_baton* %32, i32 %239, i32 %242, i32* %243, i32* %244)
  %246 = call i32 @SVN_ERR(%struct.TYPE_49__* %245)
  %247 = load i32*, i32** %41, align 8
  %248 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %249 = load i32*, i32** %31, align 8
  %250 = call %struct.TYPE_49__* @svn_ra_check_path(i32* %247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %248, i64* %43, i32* %249)
  %251 = call i32 @SVN_ERR(%struct.TYPE_49__* %250)
  %252 = load i64, i64* %43, align 8
  %253 = load i64, i64* @svn_node_none, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %276

255:                                              ; preds = %209
  %256 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i8*, i8** %34, align 8
  %260 = load i32*, i32** %31, align 8
  %261 = call %struct.TYPE_49__* @svn_wc__node_is_added(i8** %49, i32 %258, i8* %259, i32* %260)
  %262 = call i32 @SVN_ERR(%struct.TYPE_49__* %261)
  %263 = load i8*, i8** %49, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %255
  %266 = load i8*, i8** @TRUE, align 8
  %267 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 2
  store i8* %266, i8** %267, align 8
  br label %268

268:                                              ; preds = %265, %255
  %269 = load %struct.TYPE_50__*, %struct.TYPE_50__** %45, align 8
  %270 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_49__* (i8*, i32*)*, %struct.TYPE_49__* (i8*, i32*)** %270, align 8
  %272 = load i8*, i8** %46, align 8
  %273 = load i32*, i32** %31, align 8
  %274 = call %struct.TYPE_49__* %271(i8* %272, i32* %273)
  %275 = call i32 @SVN_ERR(%struct.TYPE_49__* %274)
  br label %360

276:                                              ; preds = %209
  %277 = load %struct.TYPE_48__*, %struct.TYPE_48__** %20, align 8
  %278 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @svn_opt_revision_head, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %283, i32* %50, align 4
  br label %294

284:                                              ; preds = %276
  %285 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %286 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i8*, i8** %35, align 8
  %289 = load i32*, i32** %41, align 8
  %290 = load %struct.TYPE_48__*, %struct.TYPE_48__** %20, align 8
  %291 = load i32*, i32** %31, align 8
  %292 = call %struct.TYPE_49__* @svn_client__get_revision_number(i32* %50, i32* null, i32 %287, i8* %288, i32* %289, %struct.TYPE_48__* %290, i32* %291)
  %293 = call i32 @SVN_ERR(%struct.TYPE_49__* %292)
  br label %294

294:                                              ; preds = %284, %282
  %295 = load i8*, i8** %27, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i8*, i8** %44, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %297, %294
  %301 = load i64, i64* %21, align 8
  store i64 %301, i64* %52, align 8
  br label %304

302:                                              ; preds = %297
  %303 = load i64, i64* @svn_depth_unknown, align 8
  store i64 %303, i64* %52, align 8
  br label %304

304:                                              ; preds = %302, %300
  %305 = load i32*, i32** %41, align 8
  %306 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 5
  %308 = load i8*, i8** %36, align 8
  %309 = load i32, i32* %50, align 4
  %310 = load i64, i64* %52, align 8
  %311 = load %struct.TYPE_50__*, %struct.TYPE_50__** %45, align 8
  %312 = load i8*, i8** %46, align 8
  %313 = load i32*, i32** %31, align 8
  %314 = call %struct.TYPE_49__* @svn_ra_do_status2(i32* %305, i32* %306, i32* %307, i8* %308, i32 %309, i64 %310, %struct.TYPE_50__* %311, i8* %312, i32* %313)
  %315 = call i32 @SVN_ERR(%struct.TYPE_49__* %314)
  %316 = load i32*, i32** %31, align 8
  %317 = load i8*, i8** %42, align 8
  %318 = call i32 @apr_pstrdup(i32* %316, i8* %317)
  %319 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 4
  store i32 %318, i32* %319, align 8
  %320 = load i8*, i8** %47, align 8
  %321 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 3
  store i8* %320, i8** %321, align 8
  %322 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 2
  store %struct.TYPE_51__* %322, %struct.TYPE_51__** %323, align 8
  %324 = load i32*, i32** %31, align 8
  %325 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 1
  store i32* %324, i32** %325, align 8
  %326 = load i64, i64* %21, align 8
  %327 = load i64, i64* @svn_depth_unknown, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %304
  %330 = load i64, i64* @svn_depth_infinity, align 8
  %331 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 0
  store i64 %330, i64* %331, align 8
  br label %335

332:                                              ; preds = %304
  %333 = load i64, i64* %21, align 8
  %334 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 0
  store i64 %333, i64* %334, align 8
  br label %335

335:                                              ; preds = %332, %329
  %336 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i8*, i8** %35, align 8
  %340 = load i8*, i8** @FALSE, align 8
  %341 = load i64, i64* %21, align 8
  %342 = load i8*, i8** %27, align 8
  %343 = icmp ne i8* %342, null
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i32
  %346 = load i8*, i8** %44, align 8
  %347 = icmp ne i8* %346, null
  %348 = xor i1 %347, true
  %349 = zext i1 %348 to i32
  %350 = load i8*, i8** @FALSE, align 8
  %351 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %355 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %31, align 8
  %358 = call %struct.TYPE_49__* @svn_wc_crawl_revisions5(i32 %338, i8* %339, i32* @lock_fetch_reporter, %struct.TYPE_52__* %51, i8* %340, i64 %341, i32 %345, i32 %349, i8* %350, i32 %353, i32 %356, i32* null, i32* null, i32* %357)
  %359 = call i32 @SVN_ERR(%struct.TYPE_49__* %358)
  br label %360

360:                                              ; preds = %335, %268
  %361 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %362 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %361, i32 0, i32 4
  %363 = load i32 (i32, %struct.TYPE_47__*, i32*)*, i32 (i32, %struct.TYPE_47__*, i32*)** %362, align 8
  %364 = icmp ne i32 (i32, %struct.TYPE_47__*, i32*)* %363, null
  br i1 %364, label %365, label %382

365:                                              ; preds = %360
  %366 = load i8*, i8** %35, align 8
  %367 = load i32, i32* @svn_wc_notify_status_completed, align 4
  %368 = load i32*, i32** %31, align 8
  %369 = call %struct.TYPE_47__* @svn_wc_create_notify(i8* %366, i32 %367, i32* %368)
  store %struct.TYPE_47__* %369, %struct.TYPE_47__** %53, align 8
  %370 = load i32, i32* %48, align 4
  %371 = load %struct.TYPE_47__*, %struct.TYPE_47__** %53, align 8
  %372 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %374 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %373, i32 0, i32 4
  %375 = load i32 (i32, %struct.TYPE_47__*, i32*)*, i32 (i32, %struct.TYPE_47__*, i32*)** %374, align 8
  %376 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_47__*, %struct.TYPE_47__** %53, align 8
  %380 = load i32*, i32** %31, align 8
  %381 = call i32 %375(i32 %378, %struct.TYPE_47__* %379, i32* %380)
  br label %382

382:                                              ; preds = %365, %360
  %383 = load i32*, i32** %17, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %382
  %386 = load i32, i32* %48, align 4
  %387 = load i32*, i32** %17, align 8
  store i32 %386, i32* %387, align 4
  br label %388

388:                                              ; preds = %385, %382
  br label %428

389:                                              ; preds = %183
  %390 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %391 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i8*, i8** %35, align 8
  %394 = load i64, i64* %21, align 8
  %395 = load i8*, i8** %22, align 8
  %396 = load i8*, i8** %25, align 8
  %397 = load i8*, i8** @FALSE, align 8
  %398 = load %struct.TYPE_53__*, %struct.TYPE_53__** %37, align 8
  %399 = load i32, i32* @tweak_status, align 4
  %400 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %401 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %404 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %31, align 8
  %407 = call %struct.TYPE_49__* @svn_wc_walk_status(i32 %392, i8* %393, i64 %394, i8* %395, i8* %396, i8* %397, %struct.TYPE_53__* %398, i32 %399, %struct.status_baton* %32, i32 %402, i32 %405, i32* %406)
  store %struct.TYPE_49__* %407, %struct.TYPE_49__** %38, align 8
  %408 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %409 = icmp ne %struct.TYPE_49__* %408, null
  br i1 %409, label %410, label %425

410:                                              ; preds = %389
  %411 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %412 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @SVN_ERR_WC_MISSING, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %425

416:                                              ; preds = %410
  %417 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %418 = call i32 @svn_error_clear(%struct.TYPE_49__* %417)
  %419 = load i32, i32* @SVN_ERR_WC_NOT_WORKING_COPY, align 4
  %420 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %421 = load i8*, i8** %19, align 8
  %422 = load i32*, i32** %31, align 8
  %423 = call i8* @svn_dirent_local_style(i8* %421, i32* %422)
  %424 = call %struct.TYPE_49__* @svn_error_createf(i32 %419, i32* null, i32 %420, i8* %423)
  store %struct.TYPE_49__* %424, %struct.TYPE_49__** %16, align 8
  br label %463

425:                                              ; preds = %410, %389
  %426 = load %struct.TYPE_49__*, %struct.TYPE_49__** %38, align 8
  %427 = call i32 @SVN_ERR(%struct.TYPE_49__* %426)
  br label %428

428:                                              ; preds = %425, %388
  %429 = load i64, i64* %21, align 8
  %430 = call i64 @SVN_DEPTH_IS_RECURSIVE(i64 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %461

432:                                              ; preds = %428
  %433 = load i8*, i8** %26, align 8
  %434 = icmp ne i8* %433, null
  br i1 %434, label %461, label %435

435:                                              ; preds = %432
  %436 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %437 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load i8*, i8** %35, align 8
  %440 = load i32*, i32** %31, align 8
  %441 = load i32*, i32** %31, align 8
  %442 = call %struct.TYPE_49__* @svn_wc__externals_defined_below(i32** %54, i32 %438, i8* %439, i32* %440, i32* %441)
  %443 = call i32 @SVN_ERR(%struct.TYPE_49__* %442)
  %444 = load %struct.TYPE_51__*, %struct.TYPE_51__** %18, align 8
  %445 = load i32*, i32** %54, align 8
  %446 = load i64, i64* %21, align 8
  %447 = load i8*, i8** %22, align 8
  %448 = load i8*, i8** %23, align 8
  %449 = load i8*, i8** %24, align 8
  %450 = load i8*, i8** %25, align 8
  %451 = load %struct.TYPE_53__*, %struct.TYPE_53__** %28, align 8
  %452 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 0
  %453 = load i8*, i8** %452, align 8
  %454 = getelementptr inbounds %struct.status_baton, %struct.status_baton* %32, i32 0, i32 1
  %455 = load i8*, i8** %454, align 8
  %456 = load i32, i32* %29, align 4
  %457 = load i8*, i8** %30, align 8
  %458 = load i32*, i32** %31, align 8
  %459 = call %struct.TYPE_49__* @do_external_status(%struct.TYPE_51__* %444, i32* %445, i64 %446, i8* %447, i8* %448, i8* %449, i8* %450, %struct.TYPE_53__* %451, i8* %453, i8* %455, i32 %456, i8* %457, i32* %458)
  %460 = call i32 @SVN_ERR(%struct.TYPE_49__* %459)
  br label %461

461:                                              ; preds = %435, %432, %428
  %462 = load %struct.TYPE_49__*, %struct.TYPE_49__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_49__* %462, %struct.TYPE_49__** %16, align 8
  br label %463

463:                                              ; preds = %461, %416, %202, %158, %63
  %464 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  ret %struct.TYPE_49__* %464
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local %struct.TYPE_49__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_49__* @svn_hash_from_cstring_keys(i32**, %struct.TYPE_53__*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_wc_read_kind2(i64*, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_49__*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_49__* @svn_wc_get_default_ignores(%struct.TYPE_53__**, i32, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_client_url_from_path2(i8**, i8*, %struct.TYPE_51__*, i32*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_client__open_ra_session_internal(i32**, i32*, i8*, i8*, i32*, i8*, i8*, %struct.TYPE_51__*, i32*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_ra_has_capability(i32*, i8**, i32, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_wc__get_status_editor(%struct.TYPE_50__**, i8**, i8**, i32*, i32, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_53__*, i32, %struct.status_baton*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_wc__node_is_added(i8**, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_client__get_revision_number(i32*, i32*, i32, i8*, i32*, %struct.TYPE_48__*, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_ra_do_status2(i32*, i32*, i32*, i8*, i32, i64, %struct.TYPE_50__*, i8*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_49__* @svn_wc_crawl_revisions5(i32, i8*, i32*, %struct.TYPE_52__*, i8*, i64, i32, i32, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_49__* @svn_wc_walk_status(i32, i8*, i64, i8*, i8*, i8*, %struct.TYPE_53__*, i32, %struct.status_baton*, i32, i32, i32*) #1

declare dso_local i64 @SVN_DEPTH_IS_RECURSIVE(i64) #1

declare dso_local %struct.TYPE_49__* @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_49__* @do_external_status(%struct.TYPE_51__*, i32*, i64, i8*, i8*, i8*, i8*, %struct.TYPE_53__*, i8*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
