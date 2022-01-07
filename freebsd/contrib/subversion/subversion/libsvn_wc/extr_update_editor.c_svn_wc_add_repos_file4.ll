; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc_add_repos_file4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc_add_repos_file4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i32* }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Node '%s' exists.\00", align 1
@SVN_ERR_WC_SCHEDULE_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Can't add '%s' to a parent directory scheduled for deletion\00", align 1
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Can't find parent directory's node while trying to add '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Can't schedule an addition of '%s' below a not-directory node\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Copyfrom-url '%s' has different repository root than '%s'\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @svn_wc_add_repos_file4(%struct.TYPE_25__* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, i32 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca %struct.TYPE_26__*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %24, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = call i8* @svn_dirent_dirname(i8* %53, i32* %54)
  store i8* %55, i8** %25, align 8
  store i8* null, i8** %31, align 8
  store i32* null, i32** %32, align 8
  %56 = load i32*, i32** %23, align 8
  store i32* %56, i32** %43, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i8* @svn_dirent_is_absolute(i8* %57)
  %59 = call i32 @SVN_ERR_ASSERT(i8* %58)
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ne i32* %60, null
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @SVN_ERR_ASSERT(i8* %64)
  %66 = load i32*, i32** %17, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @SVN_ERR_ASSERT(i8* %70)
  %72 = load i32*, i32** %24, align 8
  %73 = load i8*, i8** %25, align 8
  %74 = load i32*, i32** %43, align 8
  %75 = call %struct.TYPE_26__* @svn_wc__write_check(i32* %72, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(%struct.TYPE_26__* %75)
  %77 = load i32*, i32** %24, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i32*, i32** %23, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call %struct.TYPE_26__* @svn_wc__db_read_info(i32* %26, i64* null, i32* null, i32* null, i8** null, i8** null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %77, i8* %78, i32* %79, i32* %80)
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %42, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %83 = icmp ne %struct.TYPE_26__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %11
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %92 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %91)
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %12, align 8
  br label %344

93:                                               ; preds = %84, %11
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %95 = icmp ne %struct.TYPE_26__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %98 = call i32 @svn_error_clear(%struct.TYPE_26__* %97)
  br label %112

99:                                               ; preds = %93
  %100 = load i32, i32* %26, align 4
  switch i32 %100, label %102 [
    i32 128, label %101
    i32 130, label %101
  ]

101:                                              ; preds = %99, %99
  br label %111

102:                                              ; preds = %99
  %103 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %104 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %105 = load i8*, i8** %14, align 8
  %106 = load i32*, i32** %23, align 8
  %107 = call i32 @svn_dirent_local_style(i8* %105, i32* %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call %struct.TYPE_26__* (i32, %struct.TYPE_26__*, i32, i8*, ...) @svn_error_createf(i32 %103, %struct.TYPE_26__* null, i32 %104, i8* %109)
  store %struct.TYPE_26__* %110, %struct.TYPE_26__** %12, align 8
  br label %344

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112
  %114 = load i32*, i32** %24, align 8
  %115 = load i8*, i8** %25, align 8
  %116 = load i32*, i32** %23, align 8
  %117 = load i32*, i32** %23, align 8
  %118 = call %struct.TYPE_26__* @svn_wc__db_read_info(i32* %26, i64* %27, i32* null, i32* null, i8** %34, i8** %35, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %114, i8* %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(%struct.TYPE_26__* %118)
  %120 = load i32, i32* %26, align 4
  switch i32 %120, label %131 [
    i32 129, label %121
    i32 131, label %121
    i32 130, label %122
  ]

121:                                              ; preds = %113, %113
  br label %141

122:                                              ; preds = %113
  %123 = load i32, i32* @SVN_ERR_WC_SCHEDULE_CONFLICT, align 4
  %124 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i8*, i8** %14, align 8
  %126 = load i32*, i32** %23, align 8
  %127 = call i32 @svn_dirent_local_style(i8* %125, i32* %126)
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call %struct.TYPE_26__* (i32, %struct.TYPE_26__*, i32, i8*, ...) @svn_error_createf(i32 %123, %struct.TYPE_26__* null, i32 %124, i8* %129)
  store %struct.TYPE_26__* %130, %struct.TYPE_26__** %12, align 8
  br label %344

131:                                              ; preds = %113
  %132 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %42, align 8
  %134 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i8*, i8** %14, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = call i32 @svn_dirent_local_style(i8* %135, i32* %136)
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = call %struct.TYPE_26__* (i32, %struct.TYPE_26__*, i32, i8*, ...) @svn_error_createf(i32 %132, %struct.TYPE_26__* %133, i32 %134, i8* %139)
  store %struct.TYPE_26__* %140, %struct.TYPE_26__** %12, align 8
  br label %344

141:                                              ; preds = %121
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* @svn_node_dir, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %147 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i8*, i8** %14, align 8
  %149 = load i32*, i32** %23, align 8
  %150 = call i32 @svn_dirent_local_style(i8* %148, i32* %149)
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call %struct.TYPE_26__* (i32, %struct.TYPE_26__*, i32, i8*, ...) @svn_error_createf(i32 %146, %struct.TYPE_26__* null, i32 %147, i8* %152)
  store %struct.TYPE_26__* %153, %struct.TYPE_26__** %12, align 8
  br label %344

154:                                              ; preds = %141
  %155 = load i8*, i8** %19, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %185

157:                                              ; preds = %154
  %158 = load i8*, i8** %34, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i8*, i8** %25, align 8
  %165 = load i32*, i32** %23, align 8
  %166 = load i32*, i32** %23, align 8
  %167 = call %struct.TYPE_26__* @svn_wc__db_scan_addition(i32* null, i32* null, i32* null, i8** %34, i8** %35, i32* null, i32* null, i32* null, i32* null, i32* %163, i8* %164, i32* %165, i32* %166)
  %168 = call i32 @SVN_ERR(%struct.TYPE_26__* %167)
  br label %169

169:                                              ; preds = %160, %157
  %170 = load i8*, i8** %34, align 8
  %171 = call i32 @SVN_ERR_ASSERT(i8* %170)
  %172 = load i8*, i8** %34, align 8
  %173 = load i8*, i8** %19, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = call i8* @svn_uri_skip_ancestor(i8* %172, i8* %173, i32* %174)
  store i8* %175, i8** %36, align 8
  %176 = load i8*, i8** %36, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %169
  %179 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %180 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i8*, i8** %19, align 8
  %182 = load i8*, i8** %34, align 8
  %183 = call %struct.TYPE_26__* (i32, %struct.TYPE_26__*, i32, i8*, ...) @svn_error_createf(i32 %179, %struct.TYPE_26__* null, i32 %180, i8* %181, i8* %182)
  store %struct.TYPE_26__* %183, %struct.TYPE_26__** %12, align 8
  br label %344

184:                                              ; preds = %169
  br label %187

185:                                              ; preds = %154
  store i8* null, i8** %36, align 8
  %186 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %186, i32* %20, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = load i32*, i32** %17, align 8
  %189 = load i32*, i32** %43, align 8
  %190 = call i32 @svn_prop_hash_to_array(i32* %188, i32* %189)
  %191 = load i32*, i32** %43, align 8
  %192 = call %struct.TYPE_26__* @svn_categorize_props(i32 %190, i32** %45, i32* null, i32** %44, i32* %191)
  %193 = call i32 @SVN_ERR(%struct.TYPE_26__* %192)
  %194 = load i32*, i32** %44, align 8
  %195 = load i32*, i32** %43, align 8
  %196 = call i32* @svn_prop_array_to_hash(i32* %194, i32* %195)
  store i32* %196, i32** %17, align 8
  %197 = load i32*, i32** %45, align 8
  %198 = load i32*, i32** %43, align 8
  %199 = load i32*, i32** %43, align 8
  %200 = call %struct.TYPE_26__* @accumulate_last_change(i32* %37, i32* %38, i8** %39, i32* %197, i32* %198, i32* %199)
  %201 = call i32 @SVN_ERR(%struct.TYPE_26__* %200)
  %202 = load i8*, i8** %19, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %213

204:                                              ; preds = %187
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i32*, i32** %23, align 8
  %210 = load i32*, i32** %23, align 8
  %211 = call %struct.TYPE_26__* @svn_wc__db_pristine_prepare_install(i32** %40, i32** %41, i32** %30, i32** %29, i32* %207, i8* %208, i32* %209, i32* %210)
  %212 = call i32 @SVN_ERR(%struct.TYPE_26__* %211)
  br label %226

213:                                              ; preds = %187
  %214 = load i32*, i32** %24, align 8
  %215 = load i8*, i8** %25, align 8
  %216 = load i32*, i32** %23, align 8
  %217 = load i32*, i32** %23, align 8
  %218 = call %struct.TYPE_26__* @svn_wc__db_temp_wcroot_tempdir(i8** %46, i32* %214, i8* %215, i32* %216, i32* %217)
  %219 = call i32 @SVN_ERR(%struct.TYPE_26__* %218)
  %220 = load i8*, i8** %46, align 8
  %221 = load i32, i32* @svn_io_file_del_none, align 4
  %222 = load i32*, i32** %23, align 8
  %223 = load i32*, i32** %23, align 8
  %224 = call %struct.TYPE_26__* @svn_stream_open_unique(i32** %40, i8** %28, i8* %220, i32 %221, i32* %222, i32* %223)
  %225 = call i32 @SVN_ERR(%struct.TYPE_26__* %224)
  store i32* null, i32** %30, align 8
  store i32* null, i32** %29, align 8
  br label %226

226:                                              ; preds = %213, %204
  %227 = load i32*, i32** %15, align 8
  %228 = load i32*, i32** %40, align 8
  %229 = load i32, i32* %21, align 4
  %230 = load i8*, i8** %22, align 8
  %231 = load i32*, i32** %43, align 8
  %232 = call %struct.TYPE_26__* @svn_stream_copy3(i32* %227, i32* %228, i32 %229, i8* %230, i32* %231)
  %233 = call i32 @SVN_ERR(%struct.TYPE_26__* %232)
  %234 = load i32*, i32** %16, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %256

236:                                              ; preds = %226
  %237 = load i32*, i32** %24, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = load i32*, i32** %43, align 8
  %240 = load i32*, i32** %43, align 8
  %241 = call %struct.TYPE_26__* @svn_wc__db_temp_wcroot_tempdir(i8** %47, i32* %237, i8* %238, i32* %239, i32* %240)
  %242 = call i32 @SVN_ERR(%struct.TYPE_26__* %241)
  %243 = load i8*, i8** %47, align 8
  %244 = load i32, i32* @svn_io_file_del_none, align 4
  %245 = load i32*, i32** %43, align 8
  %246 = load i32*, i32** %43, align 8
  %247 = call %struct.TYPE_26__* @svn_stream_open_unique(i32** %48, i8** %31, i8* %243, i32 %244, i32* %245, i32* %246)
  %248 = call i32 @SVN_ERR(%struct.TYPE_26__* %247)
  %249 = load i32*, i32** %16, align 8
  %250 = load i32*, i32** %48, align 8
  %251 = load i32, i32* %21, align 4
  %252 = load i8*, i8** %22, align 8
  %253 = load i32*, i32** %43, align 8
  %254 = call %struct.TYPE_26__* @svn_stream_copy3(i32* %249, i32* %250, i32 %251, i8* %252, i32* %253)
  %255 = call i32 @SVN_ERR(%struct.TYPE_26__* %254)
  br label %256

256:                                              ; preds = %236, %226
  %257 = load i8*, i8** %19, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32*, i32** %41, align 8
  %261 = load i32*, i32** %30, align 8
  %262 = load i32*, i32** %29, align 8
  %263 = load i32*, i32** %43, align 8
  %264 = call %struct.TYPE_26__* @svn_wc__db_pristine_install(i32* %260, i32* %261, i32* %262, i32* %263)
  %265 = call i32 @SVN_ERR(%struct.TYPE_26__* %264)
  br label %267

266:                                              ; preds = %256
  store i32* null, i32** %30, align 8
  store i32* null, i32** %29, align 8
  br label %267

267:                                              ; preds = %266, %259
  %268 = load i32*, i32** %16, align 8
  %269 = icmp eq i32* %268, null
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load i8*, i8** %19, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i8*, i8** %28, align 8
  store i8* %274, i8** %31, align 8
  br label %275

275:                                              ; preds = %273, %270, %267
  %276 = load i32*, i32** %16, align 8
  %277 = icmp eq i32* %276, null
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %49, align 4
  %279 = load i32*, i32** %24, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = load i8*, i8** %31, align 8
  %282 = load i32, i32* @FALSE, align 4
  %283 = load i32, i32* %49, align 4
  %284 = load i32*, i32** %43, align 8
  %285 = load i32*, i32** %43, align 8
  %286 = call %struct.TYPE_26__* @svn_wc__wq_build_file_install(i32** %33, i32* %279, i8* %280, i8* %281, i32 %282, i32 %283, i32* %284, i32* %285)
  %287 = call i32 @SVN_ERR(%struct.TYPE_26__* %286)
  %288 = load i32*, i32** %32, align 8
  %289 = load i32*, i32** %33, align 8
  %290 = load i32*, i32** %43, align 8
  %291 = call i32* @svn_wc__wq_merge(i32* %288, i32* %289, i32* %290)
  store i32* %291, i32** %32, align 8
  %292 = load i8*, i8** %31, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %306

294:                                              ; preds = %275
  %295 = load i32*, i32** %24, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = load i8*, i8** %31, align 8
  %298 = load i32*, i32** %43, align 8
  %299 = load i32*, i32** %43, align 8
  %300 = call %struct.TYPE_26__* @svn_wc__wq_build_file_remove(i32** %33, i32* %295, i8* %296, i8* %297, i32* %298, i32* %299)
  %301 = call i32 @SVN_ERR(%struct.TYPE_26__* %300)
  %302 = load i32*, i32** %32, align 8
  %303 = load i32*, i32** %33, align 8
  %304 = load i32*, i32** %43, align 8
  %305 = call i32* @svn_wc__wq_merge(i32* %302, i32* %303, i32* %304)
  store i32* %305, i32** %32, align 8
  br label %306

306:                                              ; preds = %294, %275
  %307 = load i32*, i32** %24, align 8
  %308 = load i8*, i8** %14, align 8
  %309 = load i32*, i32** %17, align 8
  %310 = load i32, i32* %37, align 4
  %311 = load i32, i32* %38, align 4
  %312 = load i8*, i8** %39, align 8
  %313 = load i8*, i8** %36, align 8
  %314 = load i8*, i8** %36, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %306
  %317 = load i8*, i8** %34, align 8
  br label %319

318:                                              ; preds = %306
  br label %319

319:                                              ; preds = %318, %316
  %320 = phi i8* [ %317, %316 ], [ null, %318 ]
  %321 = load i8*, i8** %36, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load i8*, i8** %35, align 8
  br label %326

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %325, %323
  %327 = phi i8* [ %324, %323 ], [ null, %325 ]
  %328 = load i32, i32* %20, align 4
  %329 = load i32*, i32** %30, align 8
  %330 = load i32, i32* @TRUE, align 4
  %331 = load i32*, i32** %18, align 8
  %332 = load i32, i32* @FALSE, align 4
  %333 = load i32*, i32** %32, align 8
  %334 = load i32*, i32** %43, align 8
  %335 = call %struct.TYPE_26__* @svn_wc__db_op_copy_file(i32* %307, i8* %308, i32* %309, i32 %310, i32 %311, i8* %312, i8* %313, i8* %320, i8* %327, i32 %328, i32* %329, i32 %330, i32* %331, i32 %332, i32* null, i32* %333, i32* %334)
  %336 = call i32 @SVN_ERR(%struct.TYPE_26__* %335)
  %337 = load i32*, i32** %24, align 8
  %338 = load i8*, i8** %25, align 8
  %339 = load i32, i32* %21, align 4
  %340 = load i8*, i8** %22, align 8
  %341 = load i32*, i32** %43, align 8
  %342 = call %struct.TYPE_26__* @svn_wc__wq_run(i32* %337, i8* %338, i32 %339, i8* %340, i32* %341)
  %343 = call %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__* %342)
  store %struct.TYPE_26__* %343, %struct.TYPE_26__** %12, align 8
  br label %344

344:                                              ; preds = %326, %178, %145, %131, %122, %102, %90
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  ret %struct.TYPE_26__* %345
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i8* @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_read_info(i32*, i64*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_error_trace(%struct.TYPE_26__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @svn_error_createf(i32, %struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_scan_addition(i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_categorize_props(i32, i32**, i32*, i32**, i32*) #1

declare dso_local i32 @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @accumulate_last_change(i32*, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_pristine_prepare_install(i32**, i32**, i32**, i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_pristine_install(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__wq_build_file_install(i32**, i32*, i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__wq_build_file_remove(i32**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__db_op_copy_file(i32*, i8*, i32*, i32, i32, i8*, i8*, i8*, i8*, i32, i32*, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
