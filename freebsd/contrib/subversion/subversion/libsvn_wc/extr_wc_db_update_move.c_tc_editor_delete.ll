; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STMT_SELECT_DESCENDANTS_OP_DEPTH_RV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@kind_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_notify_update_delete = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*, i64, i64, i32*)* @tc_editor_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_delete(%struct.TYPE_11__* %0, i8* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %12, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32* @mark_parent_edited(%struct.TYPE_11__* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %6, align 8
  br label %278

39:                                               ; preds = %5
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @mark_tc_on_op_root(%struct.TYPE_11__* %45, i64 %46, i64 %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32* %50)
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %6, align 8
  br label %278

53:                                               ; preds = %39
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i8* @svn_dirent_join(i32 %58, i8* %59, i32* %60)
  store i8* %61, i8** %14, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = call i32* @svn_wc__node_has_local_mods(i64* %15, i64* %16, i32 %66, i8* %67, i32 %68, i32* null, i32* null, i32* %69)
  %71 = call i32 @SVN_ERR(i32* %70)
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %53
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @FALSE, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @svn_wc__db_op_make_copy_internal(%struct.TYPE_12__* %77, i8* %78, i32 %79, i32* null, i32* null, i32* %80)
  %82 = call i32 @SVN_ERR(i32* %81)
  %83 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  store i32 %83, i32* %19, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* %19, align 4
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @svn_node_none, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %74
  %93 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  br label %96

94:                                               ; preds = %74
  %95 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = load i32*, i32** %11, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @create_node_tree_conflict(i32** %18, %struct.TYPE_11__* %84, i8* %85, i64 %86, i64 %87, i32 %88, i32 %97, i32* null, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32* %100)
  %102 = load i64, i64* @TRUE, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %240

105:                                              ; preds = %53
  %106 = load i32*, i32** %11, align 8
  %107 = call i32* @svn_pool_create(i32* %106)
  store i32* %107, i32** %20, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @STMT_SELECT_DESCENDANTS_OP_DEPTH_RV, align 4
  %114 = call i32* @svn_sqlite__get_statement(i32** %13, i32 %112, i32 %113)
  %115 = call i32 @SVN_ERR(i32* %114)
  %116 = load i32*, i32** %13, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32* @svn_sqlite__bindf(i32* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %121, i8* %122, i32 %125)
  %127 = call i32 @SVN_ERR(i32* %126)
  %128 = load i32*, i32** %13, align 8
  %129 = call i32* @svn_sqlite__step(i64* %22, i32* %128)
  %130 = call i32 @SVN_ERR(i32* %129)
  br label %131

131:                                              ; preds = %197, %105
  %132 = load i64, i64* %22, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %201

134:                                              ; preds = %131
  %135 = load i32*, i32** %20, align 8
  %136 = call i32 @svn_pool_clear(i32* %135)
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* @kind_map, align 4
  %139 = call i64 @svn_sqlite__column_token(i32* %137, i32 1, i32 %138)
  store i64 %139, i64* %25, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = call i8* @svn_sqlite__column_text(i32* %145, i32 0, i32* null)
  %147 = load i32*, i32** %20, align 8
  %148 = call i8* @svn_dirent_join(i32 %144, i8* %146, i32* %147)
  store i8* %148, i8** %21, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* @svn_node_dir, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %134
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %21, align 8
  %162 = load i32, i32* @FALSE, align 4
  %163 = load i32*, i32** %20, align 8
  %164 = load i32*, i32** %20, align 8
  %165 = call i32* @svn_wc__wq_build_dir_remove(i32** %24, i32 %155, i32 %160, i8* %161, i32 %162, i32* %163, i32* %164)
  store i32* %165, i32** %23, align 8
  br label %179

166:                                              ; preds = %134
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %21, align 8
  %176 = load i32*, i32** %20, align 8
  %177 = load i32*, i32** %20, align 8
  %178 = call i32* @svn_wc__wq_build_file_remove(i32** %24, i32 %169, i32 %174, i8* %175, i32* %176, i32* %177)
  store i32* %178, i32** %23, align 8
  br label %179

179:                                              ; preds = %166, %152
  %180 = load i32*, i32** %23, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = load i32*, i32** %24, align 8
  %187 = load i32*, i32** %20, align 8
  %188 = call i32* @svn_wc__db_wq_add_internal(%struct.TYPE_12__* %185, i32* %186, i32* %187)
  store i32* %188, i32** %23, align 8
  br label %189

189:                                              ; preds = %182, %179
  %190 = load i32*, i32** %23, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load i32*, i32** %23, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = call i32* @svn_sqlite__reset(i32* %194)
  %196 = call i32* @svn_error_compose_create(i32* %193, i32* %195)
  store i32* %196, i32** %6, align 8
  br label %278

197:                                              ; preds = %189
  %198 = load i32*, i32** %13, align 8
  %199 = call i32* @svn_sqlite__step(i64* %22, i32* %198)
  %200 = call i32 @SVN_ERR(i32* %199)
  br label %131

201:                                              ; preds = %131
  %202 = load i32*, i32** %13, align 8
  %203 = call i32* @svn_sqlite__reset(i32* %202)
  %204 = call i32 @SVN_ERR(i32* %203)
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* @svn_node_dir, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %201
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %14, align 8
  %218 = load i32, i32* @FALSE, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = load i32*, i32** %20, align 8
  %221 = call i32* @svn_wc__wq_build_dir_remove(i32** %17, i32 %211, i32 %216, i8* %217, i32 %218, i32* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32* %221)
  br label %237

223:                                              ; preds = %201
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %14, align 8
  %233 = load i32*, i32** %11, align 8
  %234 = load i32*, i32** %20, align 8
  %235 = call i32* @svn_wc__wq_build_file_remove(i32** %17, i32 %226, i32 %231, i8* %232, i32* %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32* %235)
  br label %237

237:                                              ; preds = %223, %208
  %238 = load i32*, i32** %20, align 8
  %239 = call i32 @svn_pool_destroy(i32* %238)
  br label %240

240:                                              ; preds = %237, %96
  %241 = load i32*, i32** %18, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = load i64, i64* %10, align 8
  %245 = load i64, i64* @svn_node_none, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %243, %240
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = load i8*, i8** %8, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @svn_wc_notify_update_delete, align 4
  %256 = load i64, i64* %10, align 8
  %257 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %258 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %259 = load i32*, i32** %18, align 8
  %260 = load i32*, i32** %17, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = call i32* @update_move_list_add(%struct.TYPE_12__* %250, i8* %251, i32 %254, i32 %255, i64 %256, i32 %257, i32 %258, i32* %259, i32* %260, i32* %261)
  %263 = call i32 @SVN_ERR(i32* %262)
  br label %276

264:                                              ; preds = %243
  %265 = load i32*, i32** %17, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = load i32*, i32** %17, align 8
  %272 = load i32*, i32** %11, align 8
  %273 = call i32* @svn_wc__db_wq_add_internal(%struct.TYPE_12__* %270, i32* %271, i32* %272)
  %274 = call i32 @SVN_ERR(i32* %273)
  br label %275

275:                                              ; preds = %267, %264
  br label %276

276:                                              ; preds = %275, %247
  %277 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %277, i32** %6, align 8
  br label %278

278:                                              ; preds = %276, %192, %44, %37
  %279 = load i32*, i32** %6, align 8
  ret i32* %279
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @mark_parent_edited(%struct.TYPE_11__*, i32*) #1

declare dso_local i32* @mark_tc_on_op_root(%struct.TYPE_11__*, i64, i64, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32* @svn_wc__node_has_local_mods(i64*, i64*, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_op_make_copy_internal(%struct.TYPE_12__*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @create_node_tree_conflict(i32**, %struct.TYPE_11__*, i8*, i64, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32* @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @svn_wc__wq_build_dir_remove(i32**, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_build_file_remove(i32**, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_wq_add_internal(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @update_move_list_add(%struct.TYPE_12__*, i8*, i32, i32, i64, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
