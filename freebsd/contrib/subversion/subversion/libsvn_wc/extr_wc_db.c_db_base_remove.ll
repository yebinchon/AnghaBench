; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_base_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_base_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.insert_base_baton_t = type { i8*, i32*, i32*, i32, i32*, i32, i64, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@kind_map = common dso_local global i32 0, align 4
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@STMT_SELECT_WORKING_PRESENT = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_FOR_BASE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_SELECT_MOVED_OUTSIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_SELECT_MOVED_DESCENDANTS_SRC = common dso_local global i32 0, align 4
@STMT_DELETE_WORKING_BASE_DELETE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_WORKING_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_BASE_RECURSIVE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_36__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_36__* (%struct.TYPE_35__*, i8*, i32*, i64, i64, i64, i32, i32*, i32*, i32*)* @db_base_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_36__* @db_base_remove(%struct.TYPE_35__* %0, i8* %1, i32* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.TYPE_36__*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca %struct.TYPE_36__*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca %struct.TYPE_36__*, align 8
  %50 = alloca %struct.insert_base_baton_t, align 8
  %51 = alloca i64, align 8
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %55 = load i64, i64* @FALSE, align 8
  store i64 %55, i64* %32, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = call %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i64* %24, i64* %28, i32* %25, i8** %27, i32* %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %33, %struct.TYPE_35__* %56, i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(%struct.TYPE_36__* %60)
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %66 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %64, i32 %65)
  %67 = call i32 @SVN_ERR(%struct.TYPE_36__* %66)
  %68 = load i32*, i32** %22, align 8
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %72)
  %74 = call i32 @SVN_ERR(%struct.TYPE_36__* %73)
  %75 = load i32*, i32** %22, align 8
  %76 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %75)
  %77 = call i32 @SVN_ERR(%struct.TYPE_36__* %76)
  %78 = load i64, i64* %23, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %10
  %81 = load i32*, i32** %22, align 8
  %82 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %81)
  %83 = call %struct.TYPE_36__* @svn_error_trace(%struct.TYPE_36__* %82)
  store %struct.TYPE_36__* %83, %struct.TYPE_36__** %11, align 8
  br label %581

84:                                               ; preds = %10
  %85 = load i32*, i32** %22, align 8
  %86 = call i32 @svn_sqlite__column_int(i32* %85, i32 0)
  store i32 %86, i32* %30, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = load i32, i32* @kind_map, align 4
  %89 = call i64 @svn_sqlite__column_token(i32* %87, i32 4, i32 %88)
  store i64 %89, i64* %31, align 8
  %90 = load i32, i32* %30, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %84
  %93 = load i32, i32* %30, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @relpath_depth(i8* %94)
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load i32*, i32** %22, align 8
  %99 = load i32, i32* @presence_map, align 4
  %100 = call i64 @svn_sqlite__column_token(i32* %98, i32 3, i32 %99)
  store i64 %100, i64* %34, align 8
  %101 = load i64, i64* %34, align 8
  %102 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %29, align 8
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %32, align 8
  br label %109

107:                                              ; preds = %97
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %29, align 8
  br label %109

109:                                              ; preds = %107, %104
  br label %112

110:                                              ; preds = %92, %84
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %29, align 8
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i32*, i32** %22, align 8
  %114 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %113)
  %115 = call i32 @SVN_ERR(%struct.TYPE_36__* %114)
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load i32, i32* %30, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %118
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* @svn_wc__db_status_normal, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %24, align 8
  %127 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125, %121
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i64, i64* @TRUE, align 8
  %133 = load i32*, i32** %21, align 8
  %134 = call %struct.TYPE_36__* @svn_wc__db_op_make_copy_internal(%struct.TYPE_35__* %130, i8* %131, i64 %132, i32* null, i32* null, i32* %133)
  %135 = call i32 @SVN_ERR(%struct.TYPE_36__* %134)
  br label %136

136:                                              ; preds = %129, %125
  %137 = load i64, i64* @TRUE, align 8
  store i64 %137, i64* %29, align 8
  br label %138

138:                                              ; preds = %136, %118, %112
  %139 = load i64, i64* %29, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %268, label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %32, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %268, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = load i32*, i32** %21, align 8
  %150 = call i8* @svn_dirent_join(i32 %147, i8* %148, i32* %149)
  store i8* %150, i8** %36, align 8
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* @svn_node_dir, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %250

154:                                              ; preds = %144
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @STMT_SELECT_WORKING_PRESENT, align 4
  %159 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %157, i32 %158)
  %160 = call i32 @SVN_ERR(%struct.TYPE_36__* %159)
  %161 = load i32*, i32** %22, align 8
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %13, align 8
  %166 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %164, i8* %165)
  %167 = call i32 @SVN_ERR(%struct.TYPE_36__* %166)
  %168 = load i32*, i32** %21, align 8
  %169 = call i32* @svn_pool_create(i32* %168)
  store i32* %169, i32** %37, align 8
  %170 = load i32*, i32** %22, align 8
  %171 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %170)
  %172 = call i32 @SVN_ERR(%struct.TYPE_36__* %171)
  br label %173

173:                                              ; preds = %230, %154
  %174 = load i64, i64* %23, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %234

176:                                              ; preds = %173
  %177 = load i32*, i32** %22, align 8
  %178 = call i8* @svn_sqlite__column_text(i32* %177, i32 0, i32* null)
  store i8* %178, i8** %38, align 8
  %179 = load i32*, i32** %22, align 8
  %180 = load i32, i32* @kind_map, align 4
  %181 = call i64 @svn_sqlite__column_token(i32* %179, i32 1, i32 %180)
  store i64 %181, i64* %39, align 8
  %182 = load i32*, i32** %37, align 8
  %183 = call i32 @svn_pool_clear(i32* %182)
  %184 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %38, align 8
  %188 = load i32*, i32** %37, align 8
  %189 = call i8* @svn_dirent_join(i32 %186, i8* %187, i32* %188)
  store i8* %189, i8** %40, align 8
  %190 = load i64, i64* %39, align 8
  %191 = load i64, i64* @svn_node_dir, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %176
  %194 = load i32*, i32** %14, align 8
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %40, align 8
  %199 = load i64, i64* @FALSE, align 8
  %200 = load i32*, i32** %37, align 8
  %201 = load i32*, i32** %37, align 8
  %202 = call %struct.TYPE_36__* @svn_wc__wq_build_dir_remove(i32** %35, i32* %194, i32 %197, i8* %198, i64 %199, i32* %200, i32* %201)
  store %struct.TYPE_36__* %202, %struct.TYPE_36__** %41, align 8
  br label %212

203:                                              ; preds = %176
  %204 = load i32*, i32** %14, align 8
  %205 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %40, align 8
  %209 = load i32*, i32** %37, align 8
  %210 = load i32*, i32** %37, align 8
  %211 = call %struct.TYPE_36__* @svn_wc__wq_build_file_remove(i32** %35, i32* %204, i32 %207, i8* %208, i32* %209, i32* %210)
  store %struct.TYPE_36__* %211, %struct.TYPE_36__** %41, align 8
  br label %212

212:                                              ; preds = %203, %193
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %41, align 8
  %214 = icmp ne %struct.TYPE_36__* %213, null
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %35, align 8
  %220 = load i32*, i32** %37, align 8
  %221 = call %struct.TYPE_36__* @add_work_items(i32 %218, i32* %219, i32* %220)
  store %struct.TYPE_36__* %221, %struct.TYPE_36__** %41, align 8
  br label %222

222:                                              ; preds = %215, %212
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %41, align 8
  %224 = icmp ne %struct.TYPE_36__* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %41, align 8
  %227 = load i32*, i32** %22, align 8
  %228 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %227)
  %229 = call %struct.TYPE_36__* @svn_error_compose_create(%struct.TYPE_36__* %226, %struct.TYPE_36__* %228)
  store %struct.TYPE_36__* %229, %struct.TYPE_36__** %11, align 8
  br label %581

230:                                              ; preds = %222
  %231 = load i32*, i32** %22, align 8
  %232 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %231)
  %233 = call i32 @SVN_ERR(%struct.TYPE_36__* %232)
  br label %173

234:                                              ; preds = %173
  %235 = load i32*, i32** %22, align 8
  %236 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %235)
  %237 = call i32 @SVN_ERR(%struct.TYPE_36__* %236)
  %238 = load i32*, i32** %14, align 8
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i8*, i8** %36, align 8
  %243 = load i64, i64* @FALSE, align 8
  %244 = load i32*, i32** %21, align 8
  %245 = load i32*, i32** %37, align 8
  %246 = call %struct.TYPE_36__* @svn_wc__wq_build_dir_remove(i32** %35, i32* %238, i32 %241, i8* %242, i64 %243, i32* %244, i32* %245)
  %247 = call i32 @SVN_ERR(%struct.TYPE_36__* %246)
  %248 = load i32*, i32** %37, align 8
  %249 = call i32 @svn_pool_destroy(i32* %248)
  br label %260

250:                                              ; preds = %144
  %251 = load i32*, i32** %14, align 8
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i8*, i8** %36, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = load i32*, i32** %21, align 8
  %258 = call %struct.TYPE_36__* @svn_wc__wq_build_file_remove(i32** %35, i32* %251, i32 %254, i8* %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(%struct.TYPE_36__* %258)
  br label %260

260:                                              ; preds = %250, %234
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %35, align 8
  %265 = load i32*, i32** %21, align 8
  %266 = call %struct.TYPE_36__* @add_work_items(i32 %263, i32* %264, i32* %265)
  %267 = call i32 @SVN_ERR(%struct.TYPE_36__* %266)
  br label %268

268:                                              ; preds = %260, %141, %138
  %269 = load i64, i64* %29, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %288, label %271

271:                                              ; preds = %268
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @STMT_DELETE_ACTUAL_NODE_RECURSIVE, align 4
  %276 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %274, i32 %275)
  %277 = call i32 @SVN_ERR(%struct.TYPE_36__* %276)
  %278 = load i32*, i32** %22, align 8
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i8*, i8** %13, align 8
  %283 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %281, i8* %282)
  %284 = call i32 @SVN_ERR(%struct.TYPE_36__* %283)
  %285 = load i32*, i32** %22, align 8
  %286 = call %struct.TYPE_36__* @svn_sqlite__step_done(i32* %285)
  %287 = call i32 @SVN_ERR(%struct.TYPE_36__* %286)
  br label %309

288:                                              ; preds = %268
  %289 = load i64, i64* %15, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %308, label %291

291:                                              ; preds = %288
  %292 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @STMT_DELETE_ACTUAL_FOR_BASE_RECURSIVE, align 4
  %296 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %294, i32 %295)
  %297 = call i32 @SVN_ERR(%struct.TYPE_36__* %296)
  %298 = load i32*, i32** %22, align 8
  %299 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i8*, i8** %13, align 8
  %303 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %301, i8* %302)
  %304 = call i32 @SVN_ERR(%struct.TYPE_36__* %303)
  %305 = load i32*, i32** %22, align 8
  %306 = call %struct.TYPE_36__* @svn_sqlite__step_done(i32* %305)
  %307 = call i32 @SVN_ERR(%struct.TYPE_36__* %306)
  br label %308

308:                                              ; preds = %291, %288
  br label %309

309:                                              ; preds = %308, %271
  %310 = load i64, i64* %29, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %363, label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @STMT_SELECT_MOVED_OUTSIDE, align 4
  %317 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %315, i32 %316)
  %318 = call i32 @SVN_ERR(%struct.TYPE_36__* %317)
  %319 = load i32*, i32** %22, align 8
  %320 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = load i8*, i8** %13, align 8
  %324 = load i8*, i8** %13, align 8
  %325 = call i32 @relpath_depth(i8* %324)
  %326 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %319, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %322, i8* %323, i32 %325)
  %327 = call i32 @SVN_ERR(%struct.TYPE_36__* %326)
  %328 = load i32*, i32** %22, align 8
  %329 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %328)
  %330 = call i32 @SVN_ERR(%struct.TYPE_36__* %329)
  %331 = load i32*, i32** %21, align 8
  %332 = call i32* @svn_pool_create(i32* %331)
  store i32* %332, i32** %42, align 8
  br label %333

333:                                              ; preds = %353, %312
  %334 = load i64, i64* %23, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %357

336:                                              ; preds = %333
  %337 = load i32*, i32** %42, align 8
  %338 = call i32 @svn_pool_clear(i32* %337)
  %339 = load i32*, i32** %22, align 8
  %340 = load i32*, i32** %42, align 8
  %341 = call i8* @svn_sqlite__column_text(i32* %339, i32 1, i32* %340)
  store i8* %341, i8** %43, align 8
  %342 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %343 = load i8*, i8** %43, align 8
  %344 = load i32*, i32** %42, align 8
  %345 = call %struct.TYPE_36__* @clear_moved_here(%struct.TYPE_35__* %342, i8* %343, i32* %344)
  store %struct.TYPE_36__* %345, %struct.TYPE_36__** %44, align 8
  %346 = load %struct.TYPE_36__*, %struct.TYPE_36__** %44, align 8
  %347 = icmp ne %struct.TYPE_36__* %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %336
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %44, align 8
  %350 = load i32*, i32** %22, align 8
  %351 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %350)
  %352 = call %struct.TYPE_36__* @svn_error_compose_create(%struct.TYPE_36__* %349, %struct.TYPE_36__* %351)
  store %struct.TYPE_36__* %352, %struct.TYPE_36__** %11, align 8
  br label %581

353:                                              ; preds = %336
  %354 = load i32*, i32** %22, align 8
  %355 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %354)
  %356 = call i32 @SVN_ERR(%struct.TYPE_36__* %355)
  br label %333

357:                                              ; preds = %333
  %358 = load i32*, i32** %42, align 8
  %359 = call i32 @svn_pool_destroy(i32* %358)
  %360 = load i32*, i32** %22, align 8
  %361 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %360)
  %362 = call i32 @SVN_ERR(%struct.TYPE_36__* %361)
  br label %419

363:                                              ; preds = %309
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %365 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @STMT_SELECT_MOVED_DESCENDANTS_SRC, align 4
  %368 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %366, i32 %367)
  %369 = call i32 @SVN_ERR(%struct.TYPE_36__* %368)
  %370 = load i32*, i32** %22, align 8
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load i8*, i8** %13, align 8
  %375 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %370, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %373, i8* %374, i32 0)
  %376 = call i32 @SVN_ERR(%struct.TYPE_36__* %375)
  %377 = load i32*, i32** %22, align 8
  %378 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %377)
  %379 = call i32 @SVN_ERR(%struct.TYPE_36__* %378)
  %380 = load i32*, i32** %21, align 8
  %381 = call i32* @svn_pool_create(i32* %380)
  store i32* %381, i32** %45, align 8
  br label %382

382:                                              ; preds = %409, %363
  %383 = load i64, i64* %23, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %413

385:                                              ; preds = %382
  %386 = load i32*, i32** %22, align 8
  %387 = call i32 @svn_sqlite__column_int(i32* %386, i32 0)
  store i32 %387, i32* %46, align 4
  %388 = load i32*, i32** %45, align 8
  %389 = call i32 @svn_pool_clear(i32* %388)
  %390 = load i32*, i32** %22, align 8
  %391 = load i32*, i32** %45, align 8
  %392 = call i8* @svn_sqlite__column_text(i32* %390, i32 1, i32* %391)
  store i8* %392, i8** %47, align 8
  %393 = load i32*, i32** %22, align 8
  %394 = load i32*, i32** %45, align 8
  %395 = call i8* @svn_sqlite__column_text(i32* %393, i32 4, i32* %394)
  store i8* %395, i8** %48, align 8
  %396 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %397 = load i8*, i8** %47, align 8
  %398 = load i32, i32* %46, align 4
  %399 = load i8*, i8** %48, align 8
  %400 = load i32*, i32** %45, align 8
  %401 = call %struct.TYPE_36__* @svn_wc__db_op_break_move_internal(%struct.TYPE_35__* %396, i8* %397, i32 %398, i8* %399, i32* null, i32* %400)
  store %struct.TYPE_36__* %401, %struct.TYPE_36__** %49, align 8
  %402 = load %struct.TYPE_36__*, %struct.TYPE_36__** %49, align 8
  %403 = icmp ne %struct.TYPE_36__* %402, null
  br i1 %403, label %404, label %409

404:                                              ; preds = %385
  %405 = load %struct.TYPE_36__*, %struct.TYPE_36__** %49, align 8
  %406 = load i32*, i32** %22, align 8
  %407 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %406)
  %408 = call %struct.TYPE_36__* @svn_error_compose_create(%struct.TYPE_36__* %405, %struct.TYPE_36__* %407)
  store %struct.TYPE_36__* %408, %struct.TYPE_36__** %11, align 8
  br label %581

409:                                              ; preds = %385
  %410 = load i32*, i32** %22, align 8
  %411 = call %struct.TYPE_36__* @svn_sqlite__step(i64* %23, i32* %410)
  %412 = call i32 @SVN_ERR(%struct.TYPE_36__* %411)
  br label %382

413:                                              ; preds = %382
  %414 = load i32*, i32** %45, align 8
  %415 = call i32 @svn_pool_destroy(i32* %414)
  %416 = load i32*, i32** %22, align 8
  %417 = call %struct.TYPE_36__* @svn_sqlite__reset(i32* %416)
  %418 = call i32 @SVN_ERR(%struct.TYPE_36__* %417)
  br label %419

419:                                              ; preds = %413, %357
  %420 = load i64, i64* %29, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %439

422:                                              ; preds = %419
  %423 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @STMT_DELETE_WORKING_BASE_DELETE_RECURSIVE, align 4
  %427 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %425, i32 %426)
  %428 = call i32 @SVN_ERR(%struct.TYPE_36__* %427)
  %429 = load i32*, i32** %22, align 8
  %430 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load i8*, i8** %13, align 8
  %434 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %429, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %432, i8* %433, i32 0)
  %435 = call i32 @SVN_ERR(%struct.TYPE_36__* %434)
  %436 = load i32*, i32** %22, align 8
  %437 = call %struct.TYPE_36__* @svn_sqlite__step_done(i32* %436)
  %438 = call i32 @SVN_ERR(%struct.TYPE_36__* %437)
  br label %456

439:                                              ; preds = %419
  %440 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @STMT_DELETE_WORKING_RECURSIVE, align 4
  %444 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %442, i32 %443)
  %445 = call i32 @SVN_ERR(%struct.TYPE_36__* %444)
  %446 = load i32*, i32** %22, align 8
  %447 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %448 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = load i8*, i8** %13, align 8
  %451 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %446, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %449, i8* %450)
  %452 = call i32 @SVN_ERR(%struct.TYPE_36__* %451)
  %453 = load i32*, i32** %22, align 8
  %454 = call %struct.TYPE_36__* @svn_sqlite__step_done(i32* %453)
  %455 = call i32 @SVN_ERR(%struct.TYPE_36__* %454)
  br label %456

456:                                              ; preds = %439, %422
  %457 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @STMT_DELETE_BASE_RECURSIVE, align 4
  %461 = call %struct.TYPE_36__* @svn_sqlite__get_statement(i32** %22, i32 %459, i32 %460)
  %462 = call i32 @SVN_ERR(%struct.TYPE_36__* %461)
  %463 = load i32*, i32** %22, align 8
  %464 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i8*, i8** %13, align 8
  %468 = call %struct.TYPE_36__* (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %466, i8* %467)
  %469 = call i32 @SVN_ERR(%struct.TYPE_36__* %468)
  %470 = load i32*, i32** %22, align 8
  %471 = call %struct.TYPE_36__* @svn_sqlite__step_done(i32* %470)
  %472 = call i32 @SVN_ERR(%struct.TYPE_36__* %471)
  %473 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %474 = load i8*, i8** %13, align 8
  %475 = load i32*, i32** %21, align 8
  %476 = call %struct.TYPE_36__* @db_retract_parent_delete(%struct.TYPE_35__* %473, i8* %474, i32 0, i32* %475)
  %477 = call i32 @SVN_ERR(%struct.TYPE_36__* %476)
  %478 = load i64, i64* %16, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %456
  %481 = load i64, i64* %17, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %562

483:                                              ; preds = %480, %456
  %484 = load i64, i64* @FALSE, align 8
  store i64 %484, i64* %51, align 8
  %485 = load i64, i64* %33, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %521

487:                                              ; preds = %483
  %488 = load i8*, i8** %13, align 8
  %489 = load i32*, i32** %21, align 8
  %490 = call i32 @svn_relpath_split(i8** %52, i8** %53, i8* %488, i32* %489)
  %491 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %492 = load i8*, i8** %52, align 8
  %493 = load i32*, i32** %21, align 8
  %494 = load i32*, i32** %21, align 8
  %495 = call %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i64* null, i64* null, i32* null, i8** %27, i32* %26, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* null, %struct.TYPE_35__* %491, i8* %492, i32* %493, i32* %494)
  store %struct.TYPE_36__* %495, %struct.TYPE_36__** %54, align 8
  %496 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %497 = icmp ne %struct.TYPE_36__* %496, null
  br i1 %497, label %498, label %507

498:                                              ; preds = %487
  %499 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %500 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %503 = icmp ne i64 %501, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %498
  %505 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %506 = call %struct.TYPE_36__* @svn_error_trace(%struct.TYPE_36__* %505)
  store %struct.TYPE_36__* %506, %struct.TYPE_36__** %11, align 8
  br label %581

507:                                              ; preds = %498, %487
  %508 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %509 = icmp ne %struct.TYPE_36__* %508, null
  br i1 %509, label %510, label %514

510:                                              ; preds = %507
  %511 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %512 = call i32 @svn_error_clear(%struct.TYPE_36__* %511)
  %513 = load i64, i64* @TRUE, align 8
  store i64 %513, i64* %51, align 8
  br label %519

514:                                              ; preds = %507
  %515 = load i8*, i8** %27, align 8
  %516 = load i8*, i8** %53, align 8
  %517 = load i32*, i32** %21, align 8
  %518 = call i8* @svn_relpath_join(i8* %515, i8* %516, i32* %517)
  store i8* %518, i8** %27, align 8
  br label %519

519:                                              ; preds = %514, %510
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520, %483
  %522 = load i64, i64* %51, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %561, label %524

524:                                              ; preds = %521
  %525 = call i32 @blank_ibb(%struct.insert_base_baton_t* %50)
  %526 = load i32, i32* %26, align 4
  %527 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 8
  store i32 %526, i32* %527, align 4
  %528 = load i64, i64* %17, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %524
  %531 = load i32, i32* @svn_wc__db_status_excluded, align 4
  br label %534

532:                                              ; preds = %524
  %533 = load i32, i32* @svn_wc__db_status_not_present, align 4
  br label %534

534:                                              ; preds = %532, %530
  %535 = phi i32 [ %531, %530 ], [ %533, %532 ]
  %536 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 7
  store i32 %535, i32* %536, align 8
  %537 = load i64, i64* %28, align 8
  %538 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 6
  store i64 %537, i64* %538, align 8
  %539 = load i8*, i8** %27, align 8
  %540 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 0
  store i8* %539, i8** %540, align 8
  %541 = load i32, i32* %18, align 4
  %542 = call i64 @SVN_IS_VALID_REVNUM(i32 %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %534
  %545 = load i32, i32* %18, align 4
  br label %548

546:                                              ; preds = %534
  %547 = load i32, i32* %25, align 4
  br label %548

548:                                              ; preds = %546, %544
  %549 = phi i32 [ %545, %544 ], [ %547, %546 ]
  %550 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 5
  store i32 %549, i32* %550, align 8
  %551 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 4
  store i32* null, i32** %551, align 8
  %552 = load i32, i32* @svn_depth_unknown, align 4
  %553 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 3
  store i32 %552, i32* %553, align 8
  %554 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 2
  store i32* null, i32** %554, align 8
  %555 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %50, i32 0, i32 1
  store i32* null, i32** %555, align 8
  %556 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %557 = load i8*, i8** %13, align 8
  %558 = load i32*, i32** %21, align 8
  %559 = call %struct.TYPE_36__* @insert_base_node(%struct.insert_base_baton_t* %50, %struct.TYPE_35__* %556, i8* %557, i32* %558)
  %560 = call i32 @SVN_ERR(%struct.TYPE_36__* %559)
  br label %561

561:                                              ; preds = %548, %521
  br label %562

562:                                              ; preds = %561, %480
  %563 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %564 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = load i32*, i32** %20, align 8
  %567 = load i32*, i32** %21, align 8
  %568 = call %struct.TYPE_36__* @add_work_items(i32 %565, i32* %566, i32* %567)
  %569 = call i32 @SVN_ERR(%struct.TYPE_36__* %568)
  %570 = load i32*, i32** %19, align 8
  %571 = icmp ne i32* %570, null
  br i1 %571, label %572, label %579

572:                                              ; preds = %562
  %573 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %574 = load i8*, i8** %13, align 8
  %575 = load i32*, i32** %19, align 8
  %576 = load i32*, i32** %21, align 8
  %577 = call %struct.TYPE_36__* @svn_wc__db_mark_conflict_internal(%struct.TYPE_35__* %573, i8* %574, i32* %575, i32* %576)
  %578 = call i32 @SVN_ERR(%struct.TYPE_36__* %577)
  br label %579

579:                                              ; preds = %572, %562
  %580 = load %struct.TYPE_36__*, %struct.TYPE_36__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_36__* %580, %struct.TYPE_36__** %11, align 8
  br label %581

581:                                              ; preds = %579, %504, %404, %348, %225, %80
  %582 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  ret %struct.TYPE_36__* %582
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i64*, i64*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, %struct.TYPE_35__*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local %struct.TYPE_36__* @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_36__* @svn_sqlite__step(i64*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_error_trace(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_op_make_copy_internal(%struct.TYPE_35__*, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__wq_build_dir_remove(i32**, i32*, i32, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__wq_build_file_remove(i32**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @add_work_items(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_error_compose_create(%struct.TYPE_36__*, %struct.TYPE_36__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_36__* @svn_sqlite__step_done(i32*) #1

declare dso_local %struct.TYPE_36__* @clear_moved_here(%struct.TYPE_35__*, i8*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_op_break_move_internal(%struct.TYPE_35__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @db_retract_parent_delete(%struct.TYPE_35__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_36__*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @blank_ibb(%struct.insert_base_baton_t*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local %struct.TYPE_36__* @insert_base_node(%struct.insert_base_baton_t*, %struct.TYPE_35__*, i8*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_mark_conflict_internal(%struct.TYPE_35__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
