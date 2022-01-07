; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_handle_external_item_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_handle_external_item_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32, i32 (i32, i32, i32*)* }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i8*, i8*, i32, i32 }

@SVN_ERR_RA_ILLEGAL_URL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_none = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"URL '%s' at revision %ld doesn't exist\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"URL '%s' at revision %ld is not a file or a directory\00", align 1
@svn_wc_notify_update_external = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [74 x i8] c"Unsupported external: URL of file external '%s' is not in repository '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_32__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (%struct.TYPE_33__*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_31__*, i32*, i32*, i32*)* @handle_external_item_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @handle_external_item_change(%struct.TYPE_33__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.TYPE_31__* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_34__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_32__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store %struct.TYPE_31__* %6, %struct.TYPE_31__** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br label %35

35:                                               ; preds = %32, %10
  %36 = phi i1 [ false, %10 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %40 = icmp ne %struct.TYPE_31__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call %struct.TYPE_32__* @svn_wc__resolve_relative_external_url(i8** %23, %struct.TYPE_31__* %43, i8* %44, i8* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(%struct.TYPE_32__* %48)
  %50 = load i32*, i32** %19, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %91

52:                                               ; preds = %35
  %53 = load i32*, i32** %19, align 8
  %54 = load i8*, i8** %23, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %53, i8* %54, i32* %55)
  store %struct.TYPE_32__* %56, %struct.TYPE_32__** %25, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %58 = icmp ne %struct.TYPE_32__* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %61 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %67 = call i32 @svn_error_clear(%struct.TYPE_32__* %66)
  store i32* null, i32** %19, align 8
  br label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  %70 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %69)
  store %struct.TYPE_32__* %70, %struct.TYPE_32__** %11, align 8
  br label %285

71:                                               ; preds = %65
  br label %90

72:                                               ; preds = %52
  %73 = load i32*, i32** %19, align 8
  %74 = load i8*, i8** %23, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %80 = load i32*, i32** %21, align 8
  %81 = call %struct.TYPE_32__* @svn_client__resolve_rev_and_url(%struct.TYPE_34__** %22, i32* %73, i8* %74, i32* %76, i32* %78, %struct.TYPE_33__* %79, i32* %80)
  %82 = call i32 @SVN_ERR(%struct.TYPE_32__* %81)
  %83 = load i32*, i32** %19, align 8
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %83, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(%struct.TYPE_32__* %88)
  br label %90

90:                                               ; preds = %72, %71
  br label %91

91:                                               ; preds = %90, %35
  %92 = load i32*, i32** %19, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %23, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %101 = load i32*, i32** %21, align 8
  %102 = call %struct.TYPE_32__* @svn_client__ra_session_from_path2(i32** %19, %struct.TYPE_34__** %22, i8* %95, i32* null, i32* %97, i32* %99, %struct.TYPE_33__* %100, i32* %101)
  %103 = call i32 @SVN_ERR(%struct.TYPE_32__* %102)
  br label %104

104:                                              ; preds = %94, %91
  %105 = load i32*, i32** %19, align 8
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = call %struct.TYPE_32__* @svn_ra_check_path(i32* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %108, i32* %24, i32* %109)
  %111 = call i32 @SVN_ERR(%struct.TYPE_32__* %110)
  %112 = load i32, i32* @svn_node_none, align 4
  %113 = load i32, i32* %24, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %104
  %116 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %117 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call %struct.TYPE_32__* @svn_error_createf(i64 %116, i32* null, i32 %117, i8* %120, i8* %123)
  store %struct.TYPE_32__* %124, %struct.TYPE_32__** %11, align 8
  br label %285

125:                                              ; preds = %104
  %126 = load i32, i32* %24, align 4
  %127 = icmp ne i32 129, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32, i32* %24, align 4
  %130 = icmp ne i32 128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i64, i64* @SVN_ERR_RA_ILLEGAL_URL, align 8
  %133 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call %struct.TYPE_32__* @svn_error_createf(i64 %132, i32* null, i32 %133, i8* %136, i8* %139)
  store %struct.TYPE_32__* %140, %struct.TYPE_32__** %11, align 8
  br label %285

141:                                              ; preds = %128, %125
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %143, align 8
  %145 = icmp ne i32 (i32, i32, i32*)* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 2
  %149 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %148, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %16, align 8
  %154 = load i32, i32* @svn_wc_notify_update_external, align 4
  %155 = load i32*, i32** %21, align 8
  %156 = call i32 @svn_wc_create_notify(i8* %153, i32 %154, i32* %155)
  %157 = load i32*, i32** %21, align 8
  %158 = call i32 %149(i32 %152, i32 %156, i32* %157)
  br label %159

159:                                              ; preds = %146, %141
  %160 = load i8*, i8** %17, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %169, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** %16, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @svn_dirent_dirname(i8* %163, i32* %164)
  %166 = load i32*, i32** %21, align 8
  %167 = call %struct.TYPE_32__* @svn_io_make_dir_recursively(i32 %165, i32* %166)
  %168 = call i32 @SVN_ERR(%struct.TYPE_32__* %167)
  br label %169

169:                                              ; preds = %162, %159
  %170 = load i32, i32* %24, align 4
  switch i32 %170, label %281 [
    i32 129, label %171
    i32 128, label %190
  ]

171:                                              ; preds = %169
  %172 = load i8*, i8** %16, align 8
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 0
  %183 = load i8*, i8** %14, align 8
  %184 = load i32*, i32** %20, align 8
  %185 = load i32*, i32** %19, align 8
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %187 = load i32*, i32** %21, align 8
  %188 = call %struct.TYPE_32__* @switch_dir_external(i8* %172, i8* %175, i32 %178, i32* %180, i32* %182, i8* %183, i32* %184, i32* %185, %struct.TYPE_33__* %186, i32* %187)
  %189 = call i32 @SVN_ERR(%struct.TYPE_32__* %188)
  br label %283

190:                                              ; preds = %169
  %191 = load i8*, i8** %13, align 8
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %193 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @strcmp(i8* %191, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %267

197:                                              ; preds = %190
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i8*, i8** %14, align 8
  %202 = load i32*, i32** %21, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call %struct.TYPE_32__* @svn_wc__node_get_repos_info(i32* null, i32* null, i8** %26, i8** %27, i32 %200, i8* %201, i32* %202, i32* %203)
  store %struct.TYPE_32__* %204, %struct.TYPE_32__** %29, align 8
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %206 = icmp ne %struct.TYPE_32__* %205, null
  br i1 %206, label %207, label %225

207:                                              ; preds = %197
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %222

213:                                              ; preds = %207
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %221 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %220)
  store %struct.TYPE_32__* %221, %struct.TYPE_32__** %11, align 8
  br label %285

222:                                              ; preds = %213, %207
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  %224 = call i32 @svn_error_clear(%struct.TYPE_32__* %223)
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  br label %225

225:                                              ; preds = %222, %197
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i8*, i8** %23, align 8
  %230 = load i32*, i32** %21, align 8
  %231 = call i8* @svn_uri_skip_ancestor(i32 %228, i8* %229, i32* %230)
  store i8* %231, i8** %28, align 8
  %232 = load i8*, i8** %27, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %247, label %234

234:                                              ; preds = %225
  %235 = load i8*, i8** %26, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %247, label %237

237:                                              ; preds = %234
  %238 = load i8*, i8** %28, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %237
  %241 = load i8*, i8** %27, align 8
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @strcmp(i8* %241, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240, %237, %234, %225
  %248 = load i64, i64* @SVN_ERR_UNSUPPORTED_FEATURE, align 8
  %249 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %250 = load i8*, i8** %23, align 8
  %251 = load i8*, i8** %13, align 8
  %252 = call %struct.TYPE_32__* @svn_error_createf(i64 %248, i32* null, i32 %249, i8* %250, i8* %251)
  store %struct.TYPE_32__* %252, %struct.TYPE_32__** %11, align 8
  br label %285

253:                                              ; preds = %240
  %254 = load i8*, i8** %26, align 8
  %255 = load i8*, i8** %28, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = call i8* @svn_path_url_add_component2(i8* %254, i8* %255, i32* %256)
  store i8* %257, i8** %23, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %264 = load i32*, i32** %21, align 8
  %265 = call %struct.TYPE_32__* @svn_client__ra_session_from_path2(i32** %19, %struct.TYPE_34__** %22, i8* %258, i32* null, i32* %260, i32* %262, %struct.TYPE_33__* %263, i32* %264)
  %266 = call i32 @SVN_ERR(%struct.TYPE_32__* %265)
  br label %267

267:                                              ; preds = %253, %190
  %268 = load i8*, i8** %16, align 8
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %270 = load i8*, i8** %23, align 8
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 0
  %275 = load i8*, i8** %14, align 8
  %276 = load i32*, i32** %19, align 8
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %278 = load i32*, i32** %21, align 8
  %279 = call %struct.TYPE_32__* @switch_file_external(i8* %268, %struct.TYPE_34__* %269, i8* %270, i32* %272, i32* %274, i8* %275, i32* %276, %struct.TYPE_33__* %277, i32* %278)
  %280 = call i32 @SVN_ERR(%struct.TYPE_32__* %279)
  br label %283

281:                                              ; preds = %169
  %282 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %283

283:                                              ; preds = %281, %267, %171
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %284, %struct.TYPE_32__** %11, align 8
  br label %285

285:                                              ; preds = %283, %247, %219, %131, %115, %68
  %286 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  ret %struct.TYPE_32__* %286
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_wc__resolve_relative_external_url(i8**, %struct.TYPE_31__*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_client__resolve_rev_and_url(%struct.TYPE_34__**, i32*, i8*, i32*, i32*, %struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_client__ra_session_from_path2(i32**, %struct.TYPE_34__**, i8*, i32*, i32*, i32*, %struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_check_path(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_error_createf(i64, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_io_make_dir_recursively(i32, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_32__* @switch_dir_external(i8*, i8*, i32, i32*, i32*, i8*, i32*, i32*, %struct.TYPE_33__*, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.TYPE_32__* @svn_wc__node_get_repos_info(i32*, i32*, i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i32, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_32__* @switch_file_external(i8*, %struct.TYPE_34__*, i8*, i32*, i32*, i8*, i32*, %struct.TYPE_33__*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
