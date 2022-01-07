; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_switch_dir_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_switch_dir_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"The external '%s' defined in %s at '%s' cannot be checked out because '%s' is already a versioned path.\00", align 1
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_43__* null, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_WC_INVALID_RELOCATION = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_INVALID_RELOCATION = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_43__* (i8*, i8*, i8*, %struct.TYPE_42__*, %struct.TYPE_42__*, i8*, i32*, i32*, %struct.TYPE_44__*, i32*)* @switch_dir_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_43__* @switch_dir_external(i8* %0, i8* %1, i8* %2, %struct.TYPE_42__* %3, %struct.TYPE_42__* %4, i8* %5, i32* %6, i32* %7, %struct.TYPE_44__* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_42__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_44__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_43__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store %struct.TYPE_42__* %3, %struct.TYPE_42__** %15, align 8
  store %struct.TYPE_42__* %4, %struct.TYPE_42__** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store %struct.TYPE_44__* %8, %struct.TYPE_44__** %20, align 8
  store i32* %9, i32** %21, align 8
  %35 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i32*, i32** %21, align 8
  %38 = call i32* @svn_pool_create(i32* %37)
  store i32* %38, i32** %26, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @svn_dirent_is_absolute(i8* %39)
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @svn_opt_revision_number, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %10
  %48 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %24, align 4
  br label %52

52:                                               ; preds = %47, %10
  %53 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @svn_opt_revision_number, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %25, align 4
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i32*, i32** %21, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = call %struct.TYPE_43__* @svn_wc__node_get_base(i64* %22, i32* null, i32* null, i8** %27, i8** %28, i32* null, i32 %66, i8* %67, i32 %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(%struct.TYPE_43__* %71)
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* @svn_node_unknown, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %110

76:                                               ; preds = %63
  %77 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %12, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call %struct.TYPE_43__* @svn_wc__get_wcroot(i8** %29, i32 %79, i8* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(%struct.TYPE_43__* %83)
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = call %struct.TYPE_43__* @svn_wc__get_wcroot(i8** %30, i32 %87, i8* %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(%struct.TYPE_43__* %91)
  %93 = load i8*, i8** %29, align 8
  %94 = load i8*, i8** %30, align 8
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %76
  %98 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %99 = call i32 @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %102 = load i8*, i8** %17, align 8
  %103 = load i32*, i32** %21, align 8
  %104 = call i32 @svn_dirent_local_style(i8* %102, i32* %103)
  %105 = load i8*, i8** %12, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @svn_dirent_local_style(i8* %105, i32* %106)
  %108 = call %struct.TYPE_43__* @svn_error_createf(i32 %98, i32* null, i32 %99, i8* %100, i32 %101, i32 %104, i32 %107)
  store %struct.TYPE_43__* %108, %struct.TYPE_43__** %11, align 8
  br label %439

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109, %63
  %111 = load i8*, i8** %12, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = call %struct.TYPE_43__* @svn_io_check_path(i8* %111, i64* %22, i32* %112)
  %114 = call i32 @SVN_ERR(%struct.TYPE_43__* %113)
  %115 = load i64, i64* %22, align 8
  %116 = load i64, i64* @svn_node_dir, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %355

118:                                              ; preds = %110
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %12, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = load i32*, i32** %26, align 8
  %125 = call %struct.TYPE_43__* @svn_wc__node_get_url(i8** %31, i32 %121, i8* %122, i32* %123, i32* %124)
  store %struct.TYPE_43__* %125, %struct.TYPE_43__** %23, align 8
  %126 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %127 = icmp ne %struct.TYPE_43__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %118
  %129 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %136 = call i32 @svn_error_clear(%struct.TYPE_43__* %135)
  %137 = load %struct.TYPE_43__*, %struct.TYPE_43__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_43__* %137, %struct.TYPE_43__** %23, align 8
  br label %356

138:                                              ; preds = %128, %118
  %139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %140 = icmp ne %struct.TYPE_43__* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %143 = call %struct.TYPE_43__* @svn_error_trace(%struct.TYPE_43__* %142)
  store %struct.TYPE_43__* %143, %struct.TYPE_43__** %11, align 8
  br label %439

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %31, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %354

148:                                              ; preds = %145
  %149 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %12, align 8
  %153 = load i32*, i32** %21, align 8
  %154 = call %struct.TYPE_43__* @svn_wc__is_wcroot(i32* %32, i32 %151, i8* %152, i32* %153)
  %155 = call i32 @SVN_ERR(%struct.TYPE_43__* %154)
  %156 = load i32, i32* %32, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %203, label %158

158:                                              ; preds = %148
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %17, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %21, align 8
  %172 = call %struct.TYPE_43__* @svn_wc__external_remove(i32 %161, i8* %162, i8* %163, i32 %164, i32 %167, i32 %170, i32* %171)
  store %struct.TYPE_43__* %172, %struct.TYPE_43__** %23, align 8
  %173 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %174 = icmp ne %struct.TYPE_43__* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %158
  %176 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %183 = call i32 @svn_error_clear(%struct.TYPE_43__* %182)
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %23, align 8
  br label %191

184:                                              ; preds = %175, %158
  %185 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %186 = icmp ne %struct.TYPE_43__* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %189 = call %struct.TYPE_43__* @svn_error_trace(%struct.TYPE_43__* %188)
  store %struct.TYPE_43__* %189, %struct.TYPE_43__** %11, align 8
  br label %439

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %181
  %192 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %193 = call i32 @_(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %194 = load i8*, i8** %14, align 8
  %195 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %196 = load i8*, i8** %17, align 8
  %197 = load i32*, i32** %21, align 8
  %198 = call i32 @svn_dirent_local_style(i8* %196, i32* %197)
  %199 = load i8*, i8** %12, align 8
  %200 = load i32*, i32** %21, align 8
  %201 = call i32 @svn_dirent_local_style(i8* %199, i32* %200)
  %202 = call %struct.TYPE_43__* @svn_error_createf(i32 %192, i32* null, i32 %193, i8* %194, i32 %195, i32 %198, i32 %201)
  store %struct.TYPE_43__* %202, %struct.TYPE_43__** %11, align 8
  br label %439

203:                                              ; preds = %148
  %204 = load i8*, i8** %31, align 8
  %205 = load i8*, i8** %13, align 8
  %206 = call i64 @strcmp(i8* %204, i8* %205)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %243

208:                                              ; preds = %203
  %209 = load i32*, i32** %18, align 8
  %210 = load i8*, i8** %12, align 8
  %211 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %212 = load i32, i32* @svn_depth_unknown, align 4
  %213 = load i32, i32* @FALSE, align 4
  %214 = load i32, i32* @FALSE, align 4
  %215 = load i32, i32* @FALSE, align 4
  %216 = load i32, i32* @TRUE, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = load i32, i32* @TRUE, align 4
  %219 = load i32*, i32** %19, align 8
  %220 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %221 = load i32*, i32** %26, align 8
  %222 = call %struct.TYPE_43__* @svn_client__update_internal(i32* null, i32* %209, i8* %210, %struct.TYPE_42__* %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32* %219, %struct.TYPE_44__* %220, i32* %221)
  %223 = call i32 @SVN_ERR(%struct.TYPE_43__* %222)
  %224 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %17, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load i64, i64* @svn_node_dir, align 8
  %230 = load i8*, i8** %27, align 8
  %231 = load i8*, i8** %28, align 8
  %232 = load i8*, i8** %27, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = load i32*, i32** %21, align 8
  %235 = call i32 @svn_uri_skip_ancestor(i8* %232, i8* %233, i32* %234)
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* %25, align 4
  %238 = load i32*, i32** %21, align 8
  %239 = call %struct.TYPE_43__* @svn_wc__external_register(i32 %226, i8* %227, i8* %228, i64 %229, i8* %230, i8* %231, i32 %235, i32 %236, i32 %237, i32* %238)
  %240 = call i32 @SVN_ERR(%struct.TYPE_43__* %239)
  %241 = load i32*, i32** %26, align 8
  %242 = call i32 @svn_pool_destroy(i32* %241)
  br label %430

243:                                              ; preds = %203
  %244 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i8*, i8** %12, align 8
  %248 = load i32*, i32** %21, align 8
  %249 = load i32*, i32** %26, align 8
  %250 = call %struct.TYPE_43__* @svn_wc__node_get_repos_info(i32* null, i32* null, i8** %27, i8** %28, i32 %246, i8* %247, i32* %248, i32* %249)
  store %struct.TYPE_43__* %250, %struct.TYPE_43__** %23, align 8
  %251 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %252 = icmp ne %struct.TYPE_43__* %251, null
  br i1 %252, label %253, label %271

253:                                              ; preds = %243
  %254 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %255 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %253
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %259
  %266 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %267 = call %struct.TYPE_43__* @svn_error_trace(%struct.TYPE_43__* %266)
  store %struct.TYPE_43__* %267, %struct.TYPE_43__** %11, align 8
  br label %439

268:                                              ; preds = %259, %253
  %269 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %270 = call i32 @svn_error_clear(%struct.TYPE_43__* %269)
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  br label %271

271:                                              ; preds = %268, %243
  %272 = load i8*, i8** %27, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %353

274:                                              ; preds = %271
  %275 = load i8*, i8** %27, align 8
  %276 = load i8*, i8** %13, align 8
  %277 = call i32 @svn_uri__is_ancestor(i8* %275, i8* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %319, label %279

279:                                              ; preds = %274
  %280 = load i8*, i8** %13, align 8
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %282 = load i32*, i32** %26, align 8
  %283 = load i32*, i32** %26, align 8
  %284 = call %struct.TYPE_43__* @svn_client_get_repos_root(i8** %33, i32* null, i8* %280, %struct.TYPE_44__* %281, i32* %282, i32* %283)
  %285 = call i32 @SVN_ERR(%struct.TYPE_43__* %284)
  %286 = load i8*, i8** %12, align 8
  %287 = load i8*, i8** %27, align 8
  %288 = load i8*, i8** %33, align 8
  %289 = load i32, i32* @FALSE, align 4
  %290 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %291 = load i32*, i32** %26, align 8
  %292 = call %struct.TYPE_43__* @svn_client_relocate2(i8* %286, i8* %287, i8* %288, i32 %289, %struct.TYPE_44__* %290, i32* %291)
  store %struct.TYPE_43__* %292, %struct.TYPE_43__** %23, align 8
  %293 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %294 = icmp ne %struct.TYPE_43__* %293, null
  br i1 %294, label %295, label %310

295:                                              ; preds = %279
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %297 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @SVN_ERR_WC_INVALID_RELOCATION, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %303 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @SVN_ERR_CLIENT_INVALID_RELOCATION, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %301, %295
  %308 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %309 = call i32 @svn_error_clear(%struct.TYPE_43__* %308)
  br label %356

310:                                              ; preds = %301, %279
  %311 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %312 = icmp ne %struct.TYPE_43__* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %315 = call %struct.TYPE_43__* @svn_error_trace(%struct.TYPE_43__* %314)
  store %struct.TYPE_43__* %315, %struct.TYPE_43__** %11, align 8
  br label %439

316:                                              ; preds = %310
  br label %317

317:                                              ; preds = %316
  %318 = load i8*, i8** %33, align 8
  store i8* %318, i8** %27, align 8
  br label %319

319:                                              ; preds = %317, %274
  %320 = load i8*, i8** %12, align 8
  %321 = load i8*, i8** %13, align 8
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %323 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %324 = load i32, i32* @svn_depth_infinity, align 4
  %325 = load i32, i32* @TRUE, align 4
  %326 = load i32, i32* @FALSE, align 4
  %327 = load i32, i32* @FALSE, align 4
  %328 = load i32, i32* @TRUE, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %331 = load i32*, i32** %26, align 8
  %332 = call %struct.TYPE_43__* @svn_client__switch_internal(i32* null, i8* %320, i8* %321, %struct.TYPE_42__* %322, %struct.TYPE_42__* %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32* %329, %struct.TYPE_44__* %330, i32* %331)
  %333 = call i32 @SVN_ERR(%struct.TYPE_43__* %332)
  %334 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %335 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i8*, i8** %17, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = load i64, i64* @svn_node_dir, align 8
  %340 = load i8*, i8** %27, align 8
  %341 = load i8*, i8** %28, align 8
  %342 = load i8*, i8** %27, align 8
  %343 = load i8*, i8** %13, align 8
  %344 = load i32*, i32** %26, align 8
  %345 = call i32 @svn_uri_skip_ancestor(i8* %342, i8* %343, i32* %344)
  %346 = load i32, i32* %24, align 4
  %347 = load i32, i32* %25, align 4
  %348 = load i32*, i32** %26, align 8
  %349 = call %struct.TYPE_43__* @svn_wc__external_register(i32 %336, i8* %337, i8* %338, i64 %339, i8* %340, i8* %341, i32 %345, i32 %346, i32 %347, i32* %348)
  %350 = call i32 @SVN_ERR(%struct.TYPE_43__* %349)
  %351 = load i32*, i32** %26, align 8
  %352 = call i32 @svn_pool_destroy(i32* %351)
  br label %430

353:                                              ; preds = %271
  br label %354

354:                                              ; preds = %353, %145
  br label %355

355:                                              ; preds = %354, %110
  br label %356

356:                                              ; preds = %355, %307, %134
  %357 = load i32*, i32** %26, align 8
  %358 = call i32 @svn_pool_destroy(i32* %357)
  %359 = load i64, i64* %22, align 8
  %360 = load i64, i64* @svn_node_dir, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %383

362:                                              ; preds = %356
  %363 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %364 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i8*, i8** %17, align 8
  %367 = load i8*, i8** %12, align 8
  %368 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %369 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %375 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %378 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %21, align 8
  %381 = call %struct.TYPE_43__* @relegate_dir_external(i32 %365, i8* %366, i8* %367, i32 %370, i32 %373, i32 %376, i32 %379, i32* %380)
  %382 = call i32 @SVN_ERR(%struct.TYPE_43__* %381)
  br label %391

383:                                              ; preds = %356
  %384 = load i8*, i8** %12, align 8
  %385 = load i32*, i32** %21, align 8
  %386 = call i8* @svn_dirent_dirname(i8* %384, i32* %385)
  store i8* %386, i8** %34, align 8
  %387 = load i8*, i8** %34, align 8
  %388 = load i32*, i32** %21, align 8
  %389 = call %struct.TYPE_43__* @svn_io_make_dir_recursively(i8* %387, i32* %388)
  %390 = call i32 @SVN_ERR(%struct.TYPE_43__* %389)
  br label %391

391:                                              ; preds = %383, %362
  %392 = load i32*, i32** %18, align 8
  %393 = load i8*, i8** %13, align 8
  %394 = load i8*, i8** %12, align 8
  %395 = load %struct.TYPE_42__*, %struct.TYPE_42__** %15, align 8
  %396 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %397 = load i32, i32* @svn_depth_infinity, align 4
  %398 = load i32, i32* @FALSE, align 4
  %399 = load i32, i32* @FALSE, align 4
  %400 = load i32*, i32** %19, align 8
  %401 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %402 = load i32*, i32** %21, align 8
  %403 = call %struct.TYPE_43__* @svn_client__checkout_internal(i32* null, i32* %392, i8* %393, i8* %394, %struct.TYPE_42__* %395, %struct.TYPE_42__* %396, i32 %397, i32 %398, i32 %399, i32* %400, %struct.TYPE_44__* %401, i32* %402)
  %404 = call i32 @SVN_ERR(%struct.TYPE_43__* %403)
  %405 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %406 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load i8*, i8** %12, align 8
  %409 = load i32*, i32** %21, align 8
  %410 = load i32*, i32** %21, align 8
  %411 = call %struct.TYPE_43__* @svn_wc__node_get_repos_info(i32* null, i32* null, i8** %27, i8** %28, i32 %407, i8* %408, i32* %409, i32* %410)
  %412 = call i32 @SVN_ERR(%struct.TYPE_43__* %411)
  %413 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %414 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load i8*, i8** %17, align 8
  %417 = load i8*, i8** %12, align 8
  %418 = load i64, i64* @svn_node_dir, align 8
  %419 = load i8*, i8** %27, align 8
  %420 = load i8*, i8** %28, align 8
  %421 = load i8*, i8** %27, align 8
  %422 = load i8*, i8** %13, align 8
  %423 = load i32*, i32** %21, align 8
  %424 = call i32 @svn_uri_skip_ancestor(i8* %421, i8* %422, i32* %423)
  %425 = load i32, i32* %24, align 4
  %426 = load i32, i32* %25, align 4
  %427 = load i32*, i32** %21, align 8
  %428 = call %struct.TYPE_43__* @svn_wc__external_register(i32 %415, i8* %416, i8* %417, i64 %418, i8* %419, i8* %420, i32 %424, i32 %425, i32 %426, i32* %427)
  %429 = call i32 @SVN_ERR(%struct.TYPE_43__* %428)
  br label %430

430:                                              ; preds = %391, %319, %208
  %431 = load i8*, i8** %12, align 8
  %432 = load %struct.TYPE_44__*, %struct.TYPE_44__** %20, align 8
  %433 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** %21, align 8
  %436 = call %struct.TYPE_43__* @svn_wc__close_db(i8* %431, i32 %434, i32* %435)
  %437 = call i32 @SVN_ERR(%struct.TYPE_43__* %436)
  %438 = load %struct.TYPE_43__*, %struct.TYPE_43__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_43__* %438, %struct.TYPE_43__** %11, align 8
  br label %439

439:                                              ; preds = %430, %313, %265, %191, %187, %141, %97
  %440 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  ret %struct.TYPE_43__* %440
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__node_get_base(i64*, i32*, i32*, i8**, i8**, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_43__* @svn_error_createf(i32, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_43__* @svn_error_trace(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__is_wcroot(i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__external_remove(i32, i8*, i8*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_client__update_internal(i32*, i32*, i8*, %struct.TYPE_42__*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_44__*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__external_register(i32, i8*, i8*, i64, i8*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__node_get_repos_info(i32*, i32*, i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i8*, i8*) #1

declare dso_local %struct.TYPE_43__* @svn_client_get_repos_root(i8**, i32*, i8*, %struct.TYPE_44__*, i32*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_client_relocate2(i8*, i8*, i8*, i32, %struct.TYPE_44__*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_client__switch_internal(i32*, i8*, i8*, %struct.TYPE_42__*, %struct.TYPE_42__*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_44__*, i32*) #1

declare dso_local %struct.TYPE_43__* @relegate_dir_external(i32, i8*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_client__checkout_internal(i32*, i32*, i8*, i8*, %struct.TYPE_42__*, %struct.TYPE_42__*, i32, i32, i32, i32*, %struct.TYPE_44__*, i32*) #1

declare dso_local %struct.TYPE_43__* @svn_wc__close_db(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
